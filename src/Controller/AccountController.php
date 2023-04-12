<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

/**
 * @Route("espace-membre/profil")
 */
class AccountController extends AbstractController
{
    /**
     * @Route("/", name="app_account_index", methods={"GET", "POST"})
     */
    public function index(UserPasswordHasherInterface $userPasswordHasher, Security $security, Request $request, UserRepository $userRepository): Response
    {
        $user = $security->getUser(); // Obtient l'utilisateur connecté

        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Encodage du mot de passe
            $user->setPassword(
            $userPasswordHasher->hashPassword(
                    $user,
                    $form->get('password')->getData()
                )
            );

            $userRepository->add($user, true);

            return $this->redirectToRoute('home');
        }

        return $this->renderForm('account/index.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);
    }
}
