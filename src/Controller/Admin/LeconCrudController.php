<?php

namespace App\Controller\Admin;

use App\Entity\Lecon;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ArrayField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;

class LeconCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Lecon::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm()->hideOnIndex(),
            TextField::new('title')->setLabel('Titre'),
            TextField::new('slug')->setLabel('URL'),
            AssociationField::new('article')->setLabel('Article en lien'),
            AssociationField::new('categorie')->setLabel('Catégorie'),
            TextEditorField::new('presentation')->setLabel('Présentation'),
            TextEditorField::new('content')->setLabel('Contenu'),
            ImageField::new('image1')->setBasePath('/assets/images/')
                ->setUploadDir('./public/assets/images/')
                ->setRequired(false)
                ->setLabel('Image 1'),
            ImageField::new('image2')->setBasePath('/assets/images/')
                ->setUploadDir('./public/assets/images/')
                ->setRequired(false)
                ->setLabel('Image 2'),
            ImageField::new('image3')->setBasePath('/assets/images/')
                ->setUploadDir('./public/assets/images/')
                ->setRequired(false)
                ->setLabel('Image 3'),
            BooleanField::new('isActive')->setLabel('Actif'),
            BooleanField::new('isFree')->setLabel('Gratuit'),
            DateTimeField::new('createdAt')->setLabel('Date de création'),
        ];
    }
}
