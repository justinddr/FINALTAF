<?php

namespace App\Entity;

use App\Repository\ArticlesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * @ORM\Entity(repositoryClass=ArticlesRepository::class)
 * @Vich\Uploadable
 */
class Articles
{
    
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $titre;

    /**
     * @Gedmo\Slug(fields={"titre"})
     * @ORM\Column( length=128, unique = true)
     */
    private $slug;

    /**
     * @ORM\Column(type="text")
     */
    private $contenu;

    /**
     * @var \DateTime $created_at
     * 
     * @Gedmo\Timestampable(on="create")
     * @ORM\Column(type="datetime")
     */
    private $created_at;

    /**
     * @var \DateTime $updated_at
     * 
     * @Gedmo\Timestampable(on="update")
     * @ORM\Column(type="datetime")
     */
    private $updated_at;


    /**
     * @ORM\ManyToOne(targetEntity=Users::class, inversedBy="articles")
     * @ORM\JoinColumn(nullable=false)
     */
    private $users;

    /**
     * @ORM\OneToMany(targetEntity=Commentaires::class, mappedBy="articles", orphanRemoval=true)
     */
    private $commentaires;

    /**
     * @ORM\ManyToMany(targetEntity=MotsCles::class, inversedBy="articles")
     */
    private $mots_cles;

    /**
     * @ORM\ManyToOne(targetEntity=Categories::class, inversedBy="articles")
     * @ORM\JoinColumn(nullable=false)
     */
    private $categories;

    /**
     * @ORM\Column(type="string", length=255)
     * @var string
     */
    private $images;

    /**
     * @Vich\UploadableField(mapping="images", fileNameProperty="images")
     * @var File
     */
    private $imageFile;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $videos;

    /**
     * @Vich\UploadableField(mapping="videos", fileNameProperty="videos")
     * @var File
     */
    private $videoFile;

    public function __construct()
    {
        $this->commentaires = new ArrayCollection();
        $this->mots_cles = new ArrayCollection();
       
    }

    // public function __toString()
    // {
    //     return $this->image;
    // }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    // public function setSlug(string $slug): self
    // {
    //     $this->slug = $slug;

    //     return $this;
    // }

    public function getContenu(): ?string
    {
        return $this->contenu;
    }

    public function setContenu(string $contenu): self
    {
        $this->contenu = $contenu;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->created_at;
    }

    // public function setCreatedAt(\DateTimeInterface $created_at): self
    // {
    //     $this->created_at = $created_at;

    //     return $this;
    // }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updated_at;
    }

    // public function setUpdatedAt(\DateTimeInterface $updated_at): self
    // {
    //     $this->updated_at = $updated_at;

    //     return $this;
    // }

    public function getUsers(): ?Users
    {
        return $this->users;
    }

    public function setUsers(?Users $users): self
    {
        $this->users = $users;

        return $this;
    }

    /**
     * @return Collection|Commentaires[]
     */
    public function getCommentaires(): Collection
    {
        return $this->commentaires;
    }

    public function addCommentaire(Commentaires $commentaire): self
    {
        if (!$this->commentaires->contains($commentaire)) {
            $this->commentaires[] = $commentaire;
            $commentaire->setArticles($this);
        }

        return $this;
    }

    public function removeCommentaire(Commentaires $commentaire): self
    {
        if ($this->commentaires->removeElement($commentaire)) {
            // set the owning side to null (unless already changed)
            if ($commentaire->getArticles() === $this) {
                $commentaire->setArticles(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|MotsCles[]
     */
    public function getMotsCles(): Collection
    {
        return $this->mots_cles;
    }

    public function addMotsCle(MotsCles $motsCle): self
    {
        if (!$this->mots_cles->contains($motsCle)) {
            $this->mots_cles[] = $motsCle;
        }

        return $this;
    }

    public function removeMotsCle(MotsCles $motsCle): self
    {
        $this->mots_cles->removeElement($motsCle);

        return $this;
    }

    public function getCategories(): ?Categories
    {
        return $this->categories;
    }

    public function setCategories(?Categories $categories): self
    {
        $this->categories = $categories;

        return $this;
    }


    public function setImageFile(File $image = null)
{
    $this->imageFile = $image;

    if ($image) {
        $this->updated_at = new \DateTime('now');
    }
}

public function getImageFile()
{
    return $this->imageFile;
}

    public function getImages(): ?string
    {
        return $this->images;
    }

    public function setImages(string $images): self
    {
        $this->images = $images;

        return $this;
    }



    public function setVideoFile(File $video = null)
{
    $this->videoFile = $video;

    if ($video) {
        $this->updated_at = new \DateTime('now');
    }
}

public function getVideoFile()
{
    return $this->videoFile;
}


    public function getVideos(): ?string
    {
        return $this->videos;
    }

    public function setVideos(?string $videos): self
    {
        $this->videos = $videos;

        return $this;
    }
}
