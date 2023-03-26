<?php

namespace App\Controller\Admin;

use App\Entity\Niveau;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class NiveauCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Niveau::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Niveau')
            ->setEntityLabelInPlural('Niveaux')
            ->setSearchFields(['name'])
            ->setDefaultSort(['id' => 'DESC']);
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex()->setLabel('ID'),
            TextField::new('name')->setLabel('Nom'),
            TextField::new('slug')->setLabel('Slug'),
        ];
    }
}
