<?php 

class Article {
    //attributs
    public $nom;
    public $description;
    public $prix;
    public $image;
    public $poids;
    public $stock;
    public $disponible;

    //paramètres
    public function  __construct($nom) {
        $this->nom = $nom;}
    
    }


function displayArticle(Article $Article) {
    $jupe = new Article ("jupe peonie");
    displayArticle($jupe);
    echo $jupe;
}
    


class catalogue {
    //constructeur - remplissage du cat. avec bdd
    public function  __construct() {

    }
    
}


function displayCat(Catalogue $Catalogue) {

}



?>
