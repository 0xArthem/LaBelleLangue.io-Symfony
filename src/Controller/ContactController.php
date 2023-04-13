<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="app_contact")
     */
    public function index(Request $request, EntityManagerInterface $entityManager): Response
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            $entityManager->persist($contact);
            $entityManager->flush();

            // Message de succès
            $this->addFlash('success', 'Merci ! Nous venons de recevoir votre message. Vous recevrez une réponse d\'ici 24h !');

            $form = $this->createForm(ContactType::class, $contact);

            return $this->redirectToRoute('app_contact');
        }

        if ($form->isSubmitted() && !$form->isValid()) {
            // Message d'erreur
            $this->addFlash('error', 'Votre message n\'a pas pu être envoyé ! Veuillez réessayez.');
        }

        return $this->render('contact/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
