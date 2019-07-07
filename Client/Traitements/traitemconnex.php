<?php
 
 require_once(../database/con.php);
 // Connexion du client
   
 if (isset($_POST['connexion'])) 
 {
    $pseudo=['pseudo'];
    $mode_passe=[' $mode_passe'];

      $req=$Conn->prepare("SELECT * FROM client where pseudo=? and mode_passe=?");
       $req->execute(array($pseudo, $mode_passes)); 
       $nbr=$req->rowCount();

       if ($nbr>0) 
       {
        
         print("Bienvenu sur Artinet.cg");
       }
       else{

           echo "Veuillez repondre votre saisie";
           
       }

   
 }
 
 ?>