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
            TextField::new('slug')->setLabel('Slug')->hideOnIndex(),
            TextField::new('lienYoutube')->setLabel('Lien Youtube'),
            TextEditorField::new('description')->setLabel('Description'),
            TextEditorField::new('content')->setLabel('Contenu'),
            TextField::new('image')->hideOnIndex()->setLabel('Image'),
            AssociationField::new('niveau')->setLabel('Niveau'),
            AssociationField::new('theme')->setLabel('Thème'),
            AssociationField::new('topic')->setLabel('Topic'),
            DateField::new('createdAt')->setLabel('Publié le'),
            BooleanField::new('isActive')->setLabel('Afficher'),
            BooleanField::new('isFree')->setLabel('Gratuit')
        ];
    }
}
