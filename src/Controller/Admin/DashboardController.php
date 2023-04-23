<?php

namespace App\Controller\Admin;

use App\Entity\Faq;
use App\Entity\User;
use App\Entity\Lecon;
use App\Entity\Theme;
use App\Entity\Topic;
use App\Entity\Niveau;
use App\Entity\Article;
use App\Entity\Contact;
use App\Entity\Message;
use App\Entity\Argument;
use App\Entity\Dialogue;
use App\Entity\Vocabulaire;
use App\Entity\Subscription;
use App\Entity\LeconCategorie;
use App\Entity\CartePresentation;
use Symfony\Component\HttpFoundation\Response;
use App\Controller\Admin\ArticleCrudController;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        // return parent::index();
        $routeBuilder = $this->get(AdminUrlGenerator::class);

        return $this->redirect($routeBuilder->setController(ArticleCrudController::class)->generateUrl());
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('LaBelleLangue.io');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');

        yield MenuItem::subMenu('Landing page', 'fas fa-list')->setSubItems([
            MenuItem::linkToCrud('Arguments', 'fas fa-list', Argument::class),
            MenuItem::linkToCrud('Foire aux questions', 'fas fa-list', Faq::class),
            MenuItem::linkToCrud('Abonnement', 'fas fa-list', Subscription::class),
            MenuItem::linkToCrud('Carte - Présentation', 'fas fa-list', CartePresentation::class)
        ]);

        yield MenuItem::subMenu('Contenu', 'fas fa-list')->setSubItems([
            MenuItem::linkToCrud('Article', 'fas fa-list', Article::class),
            MenuItem::linkToCrud('Dialogue', 'fas fa-list', Dialogue::class),
            MenuItem::linkToCrud('Vocabulaire', 'fas fa-list', Vocabulaire::class),
            MenuItem::linkToCrud('Thème', 'fas fa-list', Theme::class),
            MenuItem::linkToCrud('Niveau', 'fas fa-list', Niveau::class),
            MenuItem::linkToCrud('Leçon', 'fas fa-list', Lecon::class),
            MenuItem::linkToCrud('Catégorie (Leçon)', 'fas fa-list', LeconCategorie::class)

        ]);
        
        yield MenuItem::subMenu('Forum', 'fas fa-list')->setSubItems([
            MenuItem::linkToCrud('Topic', 'fas fa-list', Topic::class),
            MenuItem::linkToCrud('Message', 'fas fa-list', Message::class)
        ]);

        yield MenuItem::linkToCrud('Utilisateur', 'fas fa-list', User::class);
        yield MenuItem::linkToCrud('Contact', 'fas fa-list', Contact::class);
    }
}
