<?php

namespace App\Controller\Admin;

use App\Entity\LeconCategorie;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class LeconCategorieCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return LeconCategorie::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex(),
            TextField::new('name')->setLabel('Nom'),
            TextField::new('slug')->setLabel('URL')
        ];
    }
}
