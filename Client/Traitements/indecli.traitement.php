<?php
 
 require_once(../database/con.php);
 // Enregistrement du client
    if (isset($_POST['Envoyer'])) 
    {
        $nom=['nom'];
        $prenom=['prenom'];
        $pseudo=['pseudo'];
        $adresse=['adresse'];
        $telephone=['telephone'];
        $email=['email'];
        $sexe=['sexe'];
         $mode_passe=['mode_passe'];
         $confirmation=['confirmation'];
 
    if (empty($nom)AND empty($prenom)AND empty($pseudo)AND empty($adresse)AND($telephone)AND empty
    ($email)AND empty($sexe)AND empty($mode_passe)AND empty($confirmation) ) 
    {
        echo'Veuillez saisir tout ces champs';
    }
    else{

            if ($mode_passe==$confirmation) 
            {
               $req=$db->prepare("SELECT * FROM client where pseudo");
               $req->execute(array($pseudo));
               $nbre=$req->rowcound();
            
               if ($nbre==0) 
               {
                $hash=password_hash($modep,PASSWORD_DEFAULT); 
                $query=$db->prepare("INSERT INTO client(nom_client,pseudo,prenom_client,adresse_client,telephone_client, 
                email_client,sexe_client,mode_passe,mode_confirmation) VALUES(?,?,?,?,?,?,?,?,?)");
                $query->execute(array($nom,$prenom,$pseudo,$adresse,$telephone,$email,$sexe,$mode_passe,
                $confirmation));
                echo "<center>Bienvenu sur Artinet.cg,commencé votre achat en ligne</center>";      

               }
               else{
                   echo'Vous n/est pas s/inscrit sur notre site ,veuillez le faire svp?' ;
               }
            }
    



    } 
}

 
 ?>