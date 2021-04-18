<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class JeuxVideosController extends AbstractController
{
    /**
     * @Route("/jeux/videos", name="jeux_videos")
     */
    public function index(): Response
    {
        return $this->render('jeux_videos/index.html.twig', [
            'controller_name' => 'JeuxVideosController',
        ]);
    }
}
