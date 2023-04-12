<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use App\Entity\Dialogue;
use App\Entity\Lecon;
use App\Entity\LeconCategorie;
use App\Entity\Niveau;
use App\Entity\Theme;
use App\Entity\Topic;
use App\Entity\User;
use App\Entity\Vocabulaire;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return parent::index();
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('LaBelleLangue.io');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Article', 'fas fa-list', Article::class);
        yield MenuItem::linkToCrud('Dialogue', 'fas fa-list', Dialogue::class);
        yield MenuItem::linkToCrud('Vocabulaire', 'fas fa-list', Vocabulaire::class);
        yield MenuItem::linkToCrud('Thème', 'fas fa-list', Theme::class);
        yield MenuItem::linkToCrud('Niveau', 'fas fa-list', Niveau::class);
        yield MenuItem::linkToCrud('Leçon', 'fas fa-list', Lecon::class);
        yield MenuItem::linkToCrud('Catégorie (Leçon)', 'fas fa-list', LeconCategorie::class);
        yield MenuItem::linkToCrud('Utilisateur', 'fas fa-list', User::class);
        
        yield MenuItem::linkToCrud('Topic', 'fas fa-list', Topic::class);
    }
}
