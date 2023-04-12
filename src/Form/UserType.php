<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Email;
use Symfony\Component\Validator\Constraints\Regex;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('email', TextType::class, [
            'label' => false,
            'attr' => [
                'placeholder' => 'Adresse électronique',
                'class' => 'form-control mb-4',
            ],
            'constraints' => [
                new NotBlank(['message' => 'Veuillez entrer une adresse électronique']),
            ],
        ])
        ->add('password', PasswordType::class, [
            'label' => false,
            'attr' => [
                'placeholder' => 'Mot de passe',
                'class' => 'form-control mb-4',
            ],
            'constraints' => [
                new NotBlank(['message' => 'Veuillez entrer un mot de passe']),
                new Length([
                    'min' => 8,
                    'minMessage' => 'Le mot de passe doit contenir au moins {{ limit }} caractères',
                ]),
                new Regex([
                    'pattern' => '/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9\W]).*$/',
                    'message' => 'Votre nouveau mot de passe doit contenir au moins une majuscule, une minuscule, et un caractère spécial ou un chiffre.',
                ]),
            ],
        ])
        ->add('pseudo', TextType::class, [
            'label' => false,
            'attr' => [
                'placeholder' => 'Pseudo',
                'class' => 'form-control mb-4',
            ],
            'constraints' => [
                new NotBlank(['message' => 'Veuillez entrer un pseudo']),
            ],
        ])
        ->add('submit', SubmitType::class, [
            'label' => 'Modifier',
            'attr' => [
                'class' => 'btn btn-dark',
            ],
        ])
    ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
