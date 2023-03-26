<?php

namespace App\Entity;

use DateTime;
use App\Entity\Theme;
use App\Entity\Niveau;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\ArticleRepository;

/**
 * @ORM\Entity(repositoryClass=ArticleRepository::class)
 */
class Article
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
    private $title;

    /**
     * @ORM\ManyToOne(targetEntity=Theme::class, inversedBy="articles")
     */
    private $theme;

    /**
     * @ORM\ManyToOne(targetEntity=Niveau::class, inversedBy="articles")
     */
    private $niveau;

    /**
     * @ORM\Column(type="boolean")
     */
    private $isActive = true;

    /**
     * @ORM\Column(type="text")
     */
    private $Description;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $image;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $slug;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $content;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire1;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire2;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire3;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire4;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire5;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire6;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire7;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire8;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire9;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $vocabulaire10;

    public function __construct()
    {
        $this->createdAt = new DateTime();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getTheme(): ?Theme
    {
        return $this->theme;
    }

    public function setTheme(?Theme $theme): self
    {
        $this->theme = $theme;

        return $this;
    }

    public function getNiveau(): ?Niveau
    {
        return $this->niveau;
    }

    public function setNiveau(?Niveau $niveau): self
    {
        $this->niveau = $niveau;

        return $this;
    }

    public function isIsActive(): ?bool
    {
        return $this->isActive;
    }

    public function setIsActive(bool $isActive): self
    {
        $this->isActive = $isActive;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->Description;
    }

    public function setDescription(string $Description): self
    {
        $this->Description = $Description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(?string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(?string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getVocabulaire1(): ?string
    {
        return $this->vocabulaire1;
    }

    public function setVocabulaire1(?string $vocabulaire1): self
    {
        $this->vocabulaire1 = $vocabulaire1;

        return $this;
    }

    /**
     * Get the value of vocabulaire10
     */
    public function getVocabulaire10()
    {
        return $this->vocabulaire10;
    }

    /**
     * Set the value of vocabulaire10
     */
    public function setVocabulaire10($vocabulaire10): self
    {
        $this->vocabulaire10 = $vocabulaire10;

        return $this;
    }

    /**
     * Get the value of vocabulaire9
     */
    public function getVocabulaire9()
    {
        return $this->vocabulaire9;
    }

    /**
     * Set the value of vocabulaire9
     */
    public function setVocabulaire9($vocabulaire9): self
    {
        $this->vocabulaire9 = $vocabulaire9;

        return $this;
    }

    /**
     * Get the value of vocabulaire8
     */
    public function getVocabulaire8()
    {
        return $this->vocabulaire8;
    }

    /**
     * Set the value of vocabulaire8
     */
    public function setVocabulaire8($vocabulaire8): self
    {
        $this->vocabulaire8 = $vocabulaire8;

        return $this;
    }

    /**
     * Get the value of vocabulaire7
     */
    public function getVocabulaire7()
    {
        return $this->vocabulaire7;
    }

    /**
     * Set the value of vocabulaire7
     */
    public function setVocabulaire7($vocabulaire7): self
    {
        $this->vocabulaire7 = $vocabulaire7;

        return $this;
    }

    /**
     * Get the value of vocabulaire6
     */
    public function getVocabulaire6()
    {
        return $this->vocabulaire6;
    }

    /**
     * Set the value of vocabulaire6
     */
    public function setVocabulaire6($vocabulaire6): self
    {
        $this->vocabulaire6 = $vocabulaire6;

        return $this;
    }

    /**
     * Get the value of vocabulaire5
     */
    public function getVocabulaire5()
    {
        return $this->vocabulaire5;
    }

    /**
     * Set the value of vocabulaire5
     */
    public function setVocabulaire5($vocabulaire5): self
    {
        $this->vocabulaire5 = $vocabulaire5;

        return $this;
    }

    /**
     * Get the value of vocabulaire4
     */
    public function getVocabulaire4()
    {
        return $this->vocabulaire4;
    }

    /**
     * Set the value of vocabulaire4
     */
    public function setVocabulaire4($vocabulaire4): self
    {
        $this->vocabulaire4 = $vocabulaire4;

        return $this;
    }

    /**
     * Get the value of vocabulaire3
     */
    public function getVocabulaire3()
    {
        return $this->vocabulaire3;
    }

    /**
     * Set the value of vocabulaire3
     */
    public function setVocabulaire3($vocabulaire3): self
    {
        $this->vocabulaire3 = $vocabulaire3;

        return $this;
    }

    /**
     * Get the value of vocabulaire2
     */
    public function getVocabulaire2()
    {
        return $this->vocabulaire2;
    }

    /**
     * Set the value of vocabulaire2
     */
    public function setVocabulaire2($vocabulaire2): self
    {
        $this->vocabulaire2 = $vocabulaire2;

        return $this;
    }
}
