<?php

namespace App\Controller;

use App\Entity\Message;
use App\Form\MessageType;
use App\Repository\TopicRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ForumController extends AbstractController
{
    /**
     * @Route("/forum", name="app_forum")
     */
    public function index(Request $request, TopicRepository $topicRepository, PaginatorInterface $paginator): Response
    {
        $query = $topicRepository->createQueryBuilder('t')
            ->where('t.isActive = :isActive')
            ->setParameter('isActive', true)
            ->orderBy('t.id', 'DESC')
            ->getQuery();

        $topics = $paginator->paginate(
            $query,
            $request->query->getInt('page', 1),
            10
        );

        return $this->render('forum/index.html.twig', [
            'topics' => $topics,
        ]);
    }

    /**
     * @Route("/forum/{slug}", name="topic")
     */
    public function topic(PaginatorInterface $paginator, TopicRepository $topicRepository, $slug, Request $request, Security $security): Response
    {
        $topic = $topicRepository->findOneBy(['slug' => $slug]);

        $messages = $paginator->paginate(
            $topic->getMessages()->filter(function($message) {
                return $message->isIsActive() === true;
            }),
            $request->query->getInt('page', 1),
            10
        );

        $message = new Message();
        // Attribution du Topic au message, et de l'utilisateur
        $message->setTopic($topic);
        $message->setUser($security->getUser());

        // Création du formulaire
        $form = $this->createForm(MessageType::class, $message);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Sauvegarde du message dans la base de données
            
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($message);
            $entityManager->flush();

            // Message de succès
            $this->addFlash('success', 'Votre message a bien été publié.');

            // Redirection vers la page du topic
            return $this->redirectToRoute('topic', ['slug' => $slug]);
        }

        if ($form->isSubmitted() && !$form->isValid()) {
            // Message d'erreur
            $this->addFlash('error', 'Votre message n\'a pas pu être envoyé ! Veuillez réessayez.');
        } 
        return $this->render('forum/topic.html.twig', [
            'topic' => $topic,
            'messages' => $messages,
            'form' => $form->createView()
        ]);
    }
}
