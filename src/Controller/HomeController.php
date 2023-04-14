<?php

namespace App\Controller;

use App\Repository\PlanRepository;
use App\Repository\LeconRepository;
use App\Repository\ThemeRepository;
use App\Repository\NiveauRepository;
use App\Repository\ArticleRepository;
use App\Repository\DialogueRepository;
use App\Repository\FaqRepository;
use App\Repository\LeconCategorieRepository;
use App\Repository\SubscriptionRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

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
    public function index(FaqRepository $faqRepository): Response
    {

        $articles = $this->articleRepository->findBy(array('isActive' => true,'isFree' => true), array('id' => 'DESC'),3,0);
        $themes = $this->themeRepository->findBy(array(), array('id' => 'DESC'));
        $niveaux = $this->niveauRepository->findBy(array(), array('id' => 'ASC'));
        $lecons = $this->leconRepository->findBy(array('isActive' => true, 'isFree' => true), array('id' => 'DESC'));
        $categories = $this->leconCategorieRepository->findAll();

        /** landing-page */
        $faqs =  $faqRepository->findAll();


        // $plans = $planRepository->findAll();
        // $activeSub = $subscriptionRepository->findActiveSub($this->getUser()->getId());

        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'themes' => $themes,
            'niveaux' => $niveaux,
            'lecons' => $lecons,
            'categories' => $categories,
            'faqs' => $faqs
            // 'plans' => $plans,
            // 'activeSub' => $activeSub
        ]);
    }

     /**
     * @Route("/lecon/{slug}", name="lecon")
     */
    public function lecon($slug): Response
    {
        $lecon = $this->leconRepository->findOneBy(['slug' => $slug, 'isFree' => true]);
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
        $lecons = $this->leconRepository->findBy(['categorie' => $categorie, 'isFree' => true], ['id' => 'DESC']);

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
        $articles = $this->articleRepository->findBy(['theme' => $theme, 'isFree' => true], ['id' => 'DESC']);

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
        $articles = $this->articleRepository->findBy(['niveau' => $niveau, 'isFree' => true], ['id' => 'DESC']);

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
        $article = $this->articleRepository->findOneBy(['slug' => $slug, 'isFree' => true]);
        $vocabulaires = $article->getVocabulaires();

        $dialogue = $this->dialogueRepository->findOneBy(['article' => $article]);

        return $this->render('home/article.html.twig', [
            'article' => $article,
            'vocabulaires' => $vocabulaires,
            'dialogue' => $dialogue
        ]);
    }
}
