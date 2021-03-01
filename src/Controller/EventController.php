<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\ORM\EntityManager;
use App\Entity\Event;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class EventController extends AbstractController
{
    /**
     * Matches /
     *
     * @Route("/", name="accueil")
     */
    public function index(): Response
    {
        $events = $this->getDoctrine()
        ->getRepository(Event::class)
        ->findAll();

        return $this->render('event/index.html.twig', [
                'variable' => $events
        ]);
    }

    /**
     * Matches /add 
     *
     * @Route("/add", name="add")
     */
    public function add(): Response
    {
        return new Response('<h1>add  oklm</h1>');
    }

    public function remove($id): Response
    {
        return new Response('<h1>remove oklm</h1>');
    }

    public function edit($id): Response
    {
        return new Response('<h1>edit oklm</h1>');
    }

    /**
     * Matches /
     *
     * @Route("/", name="accueil")
     */
    public function filter(): Response
    {
        $filter = "asc";
        switch ($filter) {
            case 'asc':
                $events = $this->getDoctrine()
                ->getRepository(Event::class)
                ->findBy(array(), array('dateEvent' => 'ASC'));
                break;
            case 'desc':
                $events = $this->getDoctrine()
                ->getRepository(Event::class)
                ->findBy(array(), array('dateEvent' => 'DESC'));
                break;
            default:
                $events = $this->getDoctrine()
                ->getRepository(Event::class)
                ->findBy(['type'=>$filter]);
                break;
        }

        return $this->render('event/index.html.twig', [
                'variable' => $events
        ]);
    }
}
