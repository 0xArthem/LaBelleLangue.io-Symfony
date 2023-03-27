<?php

namespace App\Controller\Admin;

use App\Entity\Vocabulaire;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;

class VocabulaireCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Vocabulaire::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Vocabulaire')
            ->setEntityLabelInPlural('Vocabulaires')
            ->setSearchFields(['word'])
            ->setDefaultSort(['id' => 'DESC']);
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex(),
            TextField::new('word')->setLabel('Mot'),
            TextEditorField::new('definition')->setLabel('Definition'),
            AssociationField::new('article')->setLabel('Article'),
        ];
    }
}
