<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\NiveauRepository;
use App\Repository\ThemeRepository;
use App\Repository\VocabulaireRepository;
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

        /**on récupère les thèmes par ordre décroissant */
        $themes = $themeRepository->findBy(array(), array('id' => 'DESC'));

        /**on récupère les niveaux par ordre croissant */
        $niveaux = $niveauRepository->findBy(array(), array('id' => 'ASC'));

        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'themes' => $themes,
            'niveaux' => $niveaux
        ]);
    }

    /**
     * @Route("/theme/{slug}", name="theme")
     */
    public function theme($slug, ThemeRepository $themeRepository, ArticleRepository $articleRepository): Response
    {
        $theme = $themeRepository->findOneBy(['slug' => $slug]);
        $articles = $articleRepository->findBy(['theme' => $theme], ['id' => 'DESC']);

        return $this->render('home/theme.html.twig', [
            'theme' => $theme,
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/niveau/{slug}", name="niveau")
     */
    public function niveau($slug, NiveauRepository $niveauRepository, ArticleRepository $articleRepository): Response
    {

        $niveau = $niveauRepository->findOneBy(['slug' => $slug]);
        $articles = $articleRepository->findBy(['niveau' => $niveau], ['id' => 'DESC']);

        return $this->render('home/niveau.html.twig', [
            'niveau' => $niveau,
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/article/{slug}", name="article")
     */
    public function article($slug, ArticleRepository $articleRepository, VocabulaireRepository $vocabulaireRepository): Response
    {
        $article = $articleRepository->findOneBy(['slug' => $slug]);
        $vocabulaires = $article->getVocabulaires();

        return $this->render('home/article.html.twig', [
            'article' => $article,
            'vocabulaires' => $vocabulaires
        ]);
    }
}
