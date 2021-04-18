<?php

namespace App\Controller;

use App\Entity\Articles;
use App\Entity\Commentaires;
use App\Form\CommentaireFormType;
use App\Form\AjoutArticleFormType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

class JardinageController extends AbstractController
{
    /**
     * @Route("/jardinage", name="jardinage")
     */
    public function index(): Response
    {

        //On appelle tous les articles
        $articles = $this->getDoctrine()->getRepository(Articles::class)->findAll([],['created_at' => 'desc']);

        return $this->render('jardinage/index.html.twig', [
            'articles' => $articles,
            // 'controller_name' => 'JardinageController',
        ]);
    }


     /**
     * @IsGranted("ROLE_USER")
     * @Route("/show/nouveau", name="ajout_show")
     */
    public function ajoutshow(Request $request){
        $article = new Articles();

        $form = $this->createForm(ajoutArticleFormType::class, $article);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            
            $article->setUsers($this->getUser());

             //On instancie doctrine
             $doctrine = $this->getDoctrine()->getManager();

             //On persiste nos données
             $doctrine ->persist($article);
 
             //On écrit à la base de données
             $doctrine->flush();

            //  $this->addFlash('message', 'Votre article a bien été publié');

             return $this->redirectToRoute('jardinage');
        }

        return $this->render('show/ajout.html.twig',[
            'articleForm'=> $form->createView()
            ]);
    }





    /**
     * @Route("/show/{id}", name="show")
     */
    public function show($id, Request $request){
        // On récupère l'article correspondant au 
        
        $article = $this->getDoctrine()->getRepository(Articles::class)->find($id);
        if(!$article){
            return $this->redirectToRoute('app_truc_a_faire');
        }

        //On instancie l'entité commentaire
        $commentaire = new Commentaires();

        //nous creons l'objet formulaire
        $form = $this->createForm(CommentaireFormType::class, $commentaire);

        //On recupère les données saisies
        $form->handleRequest($request);

        //On verifie si le formulaire a été envoyé et si les données sont valides
        if($form->isSubmitted() && $form->isValid()) {
            //formulaire a été envoyé 
            $commentaire->setArticles($article);
            $commentaire->setCreatedAt(new \DateTime('now'));

            //On instancie doctrine
            $doctrine = $this->getDoctrine()->getManager();

            //On persiste nos données
            $doctrine ->persist($commentaire);

            //On écrit à la base de données
            $doctrine->flush();
        }

        // Si l'article existe nous envoyons les données à la vue
        return $this->render('show/index.html.twig',[
            'article' => $article,
            'formComment'=> $form->createView()
            ]);
        }
}
