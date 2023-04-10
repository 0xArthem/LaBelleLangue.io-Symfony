<?php

namespace App\Controller;

use App\Repository\PlanRepository;
use App\Repository\LeconRepository;
use App\Repository\ThemeRepository;
use App\Repository\NiveauRepository;
use App\Repository\ArticleRepository;
use App\Repository\DialogueRepository;
use Knp\Component\Pager\PaginatorInterface;
use App\Repository\LeconCategorieRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AppController extends AbstractController
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
     * @Route("/espace-membre", name="payant")
     */
    public function index(): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $articles = $this->articleRepository->findBy(array('isActive' => true), array('id' => 'DESC'),3,0);
            $themes = $this->themeRepository->findBy(array(), array('id' => 'DESC'));
            $niveaux = $this->niveauRepository->findBy(array(), array('id' => 'ASC'));
            $lecons = $this->leconRepository->findBy(array('isActive' => true), array('id' => 'DESC'));
            $categories = $this->leconCategorieRepository->findAll();
        
            return $this->render('app/index.html.twig', [
                'articles' => $articles,
                'themes' => $themes,
                'niveaux' => $niveaux,
                'lecons' => $lecons,
                'categories' => $categories,
            ]);
        }

        return $this->redirectToRoute('home');
    }

     /**
     * @Route("/espace-membre/lecon/{slug}", name="membre_lecon")
     */
    public function lecon($slug): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $lecon = $this->leconRepository->findOneBy(['slug' => $slug]);
            $article = $lecon->getArticle();

            return $this->render('home/lecon.html.twig', [
                'lecon' => $lecon,
                'article' => $article
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /**
     * @Route("/espace-membre/categorie/{slug}", name="membre_categorie")
     */
    public function categorie($slug): Response
    {
        $user = $this->getUser();
        if ($user && $user->isPaiement()) {
            $categorie = $this->leconCategorieRepository->findOneBy(['slug' => $slug]);
            $lecons = $this->leconRepository->findBy(['categorie' => $categorie], ['id' => 'DESC']);

            return $this->render('home/lecon-categorie.html.twig', [
                'categorie' => $categorie,
                'lecons' => $lecons
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /**
     * @Route("/espace-membre/theme/{slug}", name="membre_theme")
     */
    public function theme($slug): Response
    {
        $user = $this->getUser();
        if ($user && $user->isPaiement()) {
            $theme = $this->themeRepository->findOneBy(['slug' => $slug]);
            $articles = $this->articleRepository->findBy(['theme' => $theme], ['id' => 'DESC']);

            return $this->render('home/theme.html.twig', [
                'theme' => $theme,
                'articles' => $articles
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /**
     * @Route("/espace-membre/niveau/{slug}", name="membre_niveau")
     */
    public function niveau($slug): Response
    {

        $user = $this->getUser();
        if ($user && $user->isPaiement()) {
            $niveau = $this->niveauRepository->findOneBy(['slug' => $slug]);
            $articles = $this->articleRepository->findBy(['niveau' => $niveau], ['id' => 'DESC']);

            return $this->render('home/niveau.html.twig', [
                'niveau' => $niveau,
                'articles' => $articles
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /**
     * @Route("/espace-membre/article/{slug}", name="membre_article")
     */
    public function article($slug): Response
    {
        $user = $this->getUser();
        if ($user && $user->isPaiement()) {
            $article = $this->articleRepository->findOneBy(['slug' => $slug]);
            $vocabulaires = $article->getVocabulaires();

            $dialogue = $this->dialogueRepository->findOneBy(['article' => $article]);

            return $this->render('home/article.html.twig', [
                'article' => $article,
                'vocabulaires' => $vocabulaires,
                'dialogue' => $dialogue
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /****************/

    /**
     * @Route("/espace-membre/articles", name="membre_articles")
     */
    public function articles(PaginatorInterface $paginator, Request $request): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $query = $this->articleRepository->findBy(array('isActive' => true), array('id' => 'DESC'));
            $articles = $paginator->paginate(
                $query,
                $request->query->get('page', 1),
                12
            );
            
            return $this->render('app/articles.html.twig', [
                'articles' => $articles
            ]);
        }
        return $this->redirectToRoute('home');
    }

     /**
     * @Route("/espace-membre/themes", name="membre_themes")
     */
    public function themes(): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $themes = $this->themeRepository->findBy(array(), array('id' => 'DESC'));

            return $this->render('app/themes.html.twig', [
                'themes' => $themes
            ]);
        }
        return $this->redirectToRoute('home');
    }

     /**
     * @Route("/espace-membre/lecons", name="membre_lecons")
     */
    public function lecons(PaginatorInterface $paginator, Request $request): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $query = $this->leconRepository->findBy(array('isActive' => true), array('id' => 'DESC'));
            $lecons = $paginator->paginate(
                $query,
                $request->query->get('page', 1),
                12
            );

            return $this->render('app/lecons.html.twig', [
                'lecons' => $lecons
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /**
     * @Route("/espace-membre/niveaux", name="membre_niveaux")
     */
    public function niveaux(): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $niveaux = $this->niveauRepository->findBy(array(), array('id' => 'DESC'));

            return $this->render('app/niveaux.html.twig', [
                'niveaux' => $niveaux
            ]);
        }
        return $this->redirectToRoute('home');
    }

    /**
     * @Route("/espace-membre/categories", name="membre_categories")
     */
    public function categories(): Response
    {
        $user = $this->getUser();

        if ($user && $user->isPaiement()) {
            $categories = $this->leconCategorieRepository->findBy(array(), array('id' => 'DESC'));

            return $this->render('app/categories.html.twig', [
                'categories' => $categories
            ]);
        }
        return $this->redirectToRoute('home');
    }

}
