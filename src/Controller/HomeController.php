<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\NiveauRepository;
use App\Repository\ThemeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ArticleRepository $articleRepository, ThemeRepository $themeRepository, NiveauRepository $niveauRepository): Response
    {

        /**on récupère les 3 derniers articles dont la propriété de type booléen isActive est true et par ordre décroissant */
        $articles = $articleRepository->findBy(array('isActive' => true), array('id' => 'DESC'), 3, 0);

        /**on récupère les 3 derniers thèmes par ordre décroissant */
        $themes = $themeRepository->findBy(array(), array('id' => 'DESC'), 3, 0);

        /**on récupère les niveaux par ordre croissant */
        $niveaux = $niveauRepository->findBy(array(), array('id' => 'ASC'));

        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'themes' => $themes,
            'niveaux' => $niveaux
        ]);
    }
}
