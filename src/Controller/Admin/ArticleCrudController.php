<?php

namespace App\Controller\Admin;

use App\Entity\Article;

use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ArticleCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Article::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Article')
            ->setEntityLabelInPlural('Articles')
            ->setSearchFields(['title'])
            ->setDefaultSort(['id' => 'DESC']);
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex()->setLabel('ID'),
            TextField::new('title')->setLabel('Titre'),
            TextField::new('slug')->setLabel('Slug'),
            TextEditorField::new('description')->setLabel('Description'),
            TextEditorField::new('content')->setLabel('Contenu'),
            /** vocabulaire */
            TextEditorField::new('vocabulaire1')->hideOnIndex()->setLabel('Vocabulaire n°1'),
            TextEditorField::new('vocabulaire2')->hideOnIndex()->setLabel('Vocabulaire n°2'),
            TextEditorField::new('vocabulaire3')->hideOnIndex()->setLabel('Vocabulaire n°3'),
            TextEditorField::new('vocabulaire4')->hideOnIndex()->setLabel('Vocabulaire n°4'),
            TextEditorField::new('vocabulaire5')->hideOnIndex()->setLabel('Vocabulaire n°5'),
            TextEditorField::new('vocabulaire6')->hideOnIndex()->setLabel('Vocabulaire n°6'),
            TextEditorField::new('vocabulaire7')->hideOnIndex()->setLabel('Vocabulaire n°7'),
            TextEditorField::new('vocabulaire8')->hideOnIndex()->setLabel('Vocabulaire n°8'),
            TextEditorField::new('vocabulaire9')->hideOnIndex()->setLabel('Vocabulaire n°9'),
            TextEditorField::new('vocabulaire10')->hideOnIndex()->setLabel('Vocabulaire n°10'),
            /** fin vocabulaire */
            TextField::new('image')->hideOnIndex()->setLabel('Image'),
            AssociationField::new('niveau')->setLabel('Niveau'),
            AssociationField::new('theme')->setLabel('Thème'),
            DateField::new('createdAt')->setLabel('Publié le'),
            BooleanField::new('isActive')->setLabel('Afficher')
        ];
    }
}
