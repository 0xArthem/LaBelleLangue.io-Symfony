<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\DialogueRepository;
use App\Repository\LeconCategorieRepository;
use App\Repository\LeconRepository;
use App\Repository\NiveauRepository;
use App\Repository\ThemeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    private $leconCategorieRepository;
    private $leconRepository;
    private $articleRepository;
    private $themeRepository;
    private $niveauRepository;
    private $dialogueRepository;

    public function __construct(
        LeconCategorieRepository $leconCategorieRepository, 
        LeconRepository $leconRepository, 
        ArticleRepository $articleRepository, 
        ThemeRepository $themeRepository, 
        NiveauRepository $niveauRepository,
        DialogueRepository $dialogueRepository
    ) {
        $this->leconCategorieRepository = $leconCategorieRepository;
        $this->leconRepository = $leconRepository;
        $this->articleRepository = $articleRepository;
        $this->themeRepository = $themeRepository;
        $this->niveauRepository = $niveauRepository;
        $this->dialogueRepository = $dialogueRepository;
    }

    /**
     * @Route("/", name="home")
     */
    public function index(): Response
    {

        /**on récupère les 3 derniers articles dont la propriété de type booléen isActive est true et par ordre décroissant */
        $articles = $this->articleRepository->findBy(array('isActive' => true), array('id' => 'DESC'), 3, 0);

        /**on récupère les thèmes par ordre décroissant */
        $themes = $this->themeRepository->findBy(array(), array('id' => 'DESC'));

        /**on récupère les niveaux par ordre croissant */
        $niveaux = $this->niveauRepository->findBy(array(), array('id' => 'ASC'));

        /**on récupère les leçons */
        $lecons = $this->leconRepository->findBy(array('isActive' => true), array('id' => 'ASC'));

        $categories = $this->leconCategorieRepository->findAll();

        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'themes' => $themes,
            'niveaux' => $niveaux,
            'lecons' => $lecons,
            'categories' => $categories
        ]);
    }

     /**
     * @Route("/lecon/{slug}", name="lecon")
     */
    public function lecon($slug): Response
    {
        $lecon = $this->leconRepository->findOneBy(['slug' => $slug]);
        $article = $lecon->getArticle();

        return $this->render('home/lecon.html.twig', [
            'lecon' => $lecon,
            'article' => $article
        ]);
    }

    /**
     * @Route("/categorie/{slug}", name="categorie")
     */
    public function categorie($slug): Response
    {
        $categorie = $this->leconCategorieRepository->findOneBy(['slug' => $slug]);
        $lecons = $this->leconRepository->findBy(['categorie' => $categorie], ['id' => 'DESC']);

        return $this->render('home/lecon-categorie.html.twig', [
            'categorie' => $categorie,
            'lecons' => $lecons
        ]);
    }

    /**
     * @Route("/theme/{slug}", name="theme")
     */
    public function theme($slug): Response
    {
        $theme = $this->themeRepository->findOneBy(['slug' => $slug]);
        $articles = $this->articleRepository->findBy(['theme' => $theme], ['id' => 'DESC']);

        return $this->render('home/theme.html.twig', [
            'theme' => $theme,
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/niveau/{slug}", name="niveau")
     */
    public function niveau($slug): Response
    {

        $niveau = $this->niveauRepository->findOneBy(['slug' => $slug]);
        $articles = $this->articleRepository->findBy(['niveau' => $niveau], ['id' => 'DESC']);

        return $this->render('home/niveau.html.twig', [
            'niveau' => $niveau,
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/article/{slug}", name="article")
     */
    public function article($slug): Response
    {
        $article = $this->articleRepository->findOneBy(['slug' => $slug]);
        $vocabulaires = $article->getVocabulaires();

        $dialogue = $this->dialogueRepository->findOneBy(['article' => $article]);

        return $this->render('home/article.html.twig', [
            'article' => $article,
            'vocabulaires' => $vocabulaires,
            'dialogue' => $dialogue
        ]);
    }
}
