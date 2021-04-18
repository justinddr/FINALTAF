<?php

namespace App\Form;

use App\Entity\Articles;
use App\Entity\MotsCles;
use ContainerD49ZwR2\getVichUploader_Listener_Clean_VideosService;
use Symfony\Component\Form\AbstractType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Vich\UploaderBundle\Form\Type\VichFileType;
use Vich\UploaderBundle\Form\Type\VichImageType;

class AjoutArticleFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre')
            ->add('contenu', CKEditorType::class)
            ->add('imageFile', VichImageType::class)
            ->add('videoFile', VichFileType::class)
            ->add('mots_cles', EntityType::class, [
                'class' => MotsCles::class,
                'label' => 'Mots-clés',
                'multiple' => true,
                'expanded' => true,
            ])
            ->add('categories')
            ->add('Publier', SubmitType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Articles::class,
        ]);
    }
}
