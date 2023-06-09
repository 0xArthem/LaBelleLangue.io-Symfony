<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Email;
use Symfony\Component\Validator\Constraints\Regex;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\EmailType;

use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class RegistrationFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('pseudo', TextType::class, [
            'label' => false,
            'attr' => [
                'placeholder' => 'Pseudo',
                'class' => 'form-control'
            ],
            'constraints' => [
                new NotBlank([
                    'message' => 'Veuillez entrer un pseudo.',
                ]),
                new Regex([
                    'pattern' => '/^[a-zA-Z0-9]+$/',
                    'message' => 'Le pseudo ne peut contenir que des lettres et des chiffres.',
                ])
            ],
        ])
        ->add('email', EmailType::class, [
            'label' => false,
            'attr' => [
                'placeholder' => 'Adresse électronique',
                'class' => 'form-control mt-4'
            ],
            'constraints' => [
                new NotBlank([
                    'message' => 'Veuillez entrer une adresse électronique.',
                ]),
                new Email([
                    'message' => 'Veuillez entrer une adresse électronique valide.',
                ]),
            ],
        ])
        ->add('agreeTerms', CheckboxType::class, [
            'mapped' => false,
            'label' => 'J\'accepte le traitement de mes données.',
            'constraints' => [
                new IsTrue([
                    'message' => 'Vous devez accepter notre politique de traitement de vos données.',
                ]),
            ],
        ])
        ->add('plainPassword', RepeatedType::class, [
            'type' => PasswordType::class,
            'mapped' => false,
            'attr' => ['autocomplete' => 'new-password'],
            'invalid_message' => 'Les mots de passe doivent correspondre.',
            'constraints' => [
                new NotBlank([
                    'message' => 'Veuillez entrer un mot de passe.',
                ]),
                new Length([
                    'min' => 6,
                    'minMessage' => 'Votre mot de passe doit contenir au moins {{ limit }} caractères.',
                    'max' => 4096,
                ]),
                new Regex([
                    'pattern' => '/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9\W]).*$/',
                    'message' => 'Votre mot de passe doit contenir au moins une majuscule, une minuscule, et un caractère spécial ou un chiffre.',
                ]),
            ],
            'first_options' => [
                'label' => false,
                'attr' => [
                    'placeholder' => 'Mot de passe',
                    'class' => 'form-control mt-4'
                ]
            ],
            'second_options' => [
                'label' => false,
                'attr' => [
                    'placeholder' => 'Confirmez le mot de passe',
                    'class' => 'form-control mt-4'
                ]
            ]
        ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
