<?php

namespace App\Controller\Admin;

use App\Entity\CartePresentation;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class CartePresentationCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return CartePresentation::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex(),
            TextField::new('icon'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
}
