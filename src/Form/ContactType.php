<?php

namespace App\Form;

use App\Entity\Contact;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Email;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('email', EmailType::class, [
                'label' => false,
                'attr' => [
                    'class' => 'form-control mb-4',
                    'placeholder' => 'Adresse électronique'
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
            ->add('phone', TextType::class, [
                'label' => false,
                'required' => false,
                'attr' => [
                    'class' => 'form-control mb-4',
                    'placeholder' => 'Numéro de téléphone (optionnel)'
                ]
            ])
            ->add('object', TextType::class, [
                'label' => false,
                'attr' => [
                    'class' => 'form-control mb-4',
                    'placeholder' => 'Objet'
                ],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Veuillez entrer un objet.',
                    ])
                ],
            ])
            ->add('content', TextareaType::class, [
                'label' => false,
                'attr' => [
                    'class' => 'form-control mb-4',
                    'placeholder' => 'Votre message ...'
                ],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Veuillez entrer un message.',
                    ])
                ],
            ])
            ->add('agreeTerms', CheckboxType::class, [
                'label' => 'J\'accepte le traitement de mes données.',
                'required' => false,
                'constraints' => [
                    new IsTrue([
                        'message' => 'Vous devez accepter notre politique de traitement de vos données.',
                    ]),
                ],
            ])
            ->add('submit', SubmitType::class, [
                'label' => 'Envoyer',
                'attr' => [
                    'class' => 'btn btn-dark'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Contact::class,
        ]);
    }
}
