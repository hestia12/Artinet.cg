<?php
 
 require_once(../database/con.php);
 // Enregistrement de l'adminstrateur
 if (isset($_POST['Envoyer'])) 
 {
     $login=['login'];
     $mode_passe=['mode_passe'];
 
 
     if (empty($login)||empty($mode_passe)) 
        {
            echo "Veullez saisir tout les champs";
        } 
     $query=$db->prepare("INSERT INTO admin(pseudo,mode_passe) VALUES(?,?)");
     $query->execute(array($login,$mode_passe));
     echo "Excellent Enregistrement";
 
 } else{
    echo "Vous devrait vous inscrit sur ce formulaire";
    }
 
 ?>