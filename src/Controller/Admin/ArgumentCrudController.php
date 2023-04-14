<?php

namespace App\Controller\Admin;

use App\Entity\Argument;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ArgumentCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Argument::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex(),
            TextField::new('content'),
        ];
    }
}
