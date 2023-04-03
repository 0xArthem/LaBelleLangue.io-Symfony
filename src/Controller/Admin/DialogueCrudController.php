<?php

namespace App\Controller\Admin;

use DateTime;
use App\Entity\Dialogue;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class DialogueCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Dialogue::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('lienYoutube')->setLabel('Lien Youtube'),
            TextField::new('title')->setLabel('Titre'),
            TextEditorField::new('paragraphe')->setLabel('Dialogue'),
            DateTimeField::new('createdAt')->setLabel('Date de création'),
            AssociationField::new('article')->setLabel('Article')
        ];
    }
}
