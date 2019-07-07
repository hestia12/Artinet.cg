<?php

    require_once("indecli.")
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Client</title>
   
     
   <link rel="stylesheet" type="text/css" href="../admin.css"/>
   
 
</head>
    <body>
        
       <div class="box">
            
            <h1>Formulaire d'inscription</h1>

                <form method="POST" action="#">
                    <div class="input-goup">
                        <input type="text" name="nom">
                        <label>Nom</label>
                    </div>
                    
                    <div class="input-goup">
                        <input type="text" name="prenom">
                        <label> Prénom</label>
                    </div>
                    
                    <div class="input-goup">
                        <input type="text" name="pseudo">
                        <label>Pseudo</label>
                    </div>
                    
                    <div class="input-goup">
                        <input type="text" name="adresse">
                        <label>Adresse</label>
                    </div>


                    <div class="input-goup">
                        <input type="text" name="telephone">
                        <label>Téléphone</label>
                    </div>


                    <div class="input-goup">
                        <input type="text" name="email">
                        <label>Email</label>
                    </div>
                    
                    
                    <div class="input-goup">
                        
                        <label>Sexe</label>
                        <select name="sexe" >
                        
                            <option value="maxculin" selected>Maxculin</option>
                                <option value="femmin">Femmin</option>
                                <option value="autre">Autre</option>
                        </select>
                    </div>


                    
                    <div class="input-goup">
                        <input type="password" name="mode_passe">
                        <label>Mode de passe</label>
                    </div>




                    <div class="input-group">
                        <input type="password" name="confirmation">
                        <label>Confirmation du mode de passe</label>
                    </div>


                    <div class="input-group">

                        <input type="submit" class="btn" name="Envoyer" value="Envoyer"><br/>
                    
                    </div>
 
                    <p>
                      Est vous connecté <a href="indexcli.connexion.php">Sign-in</a>
                    </p>

                     
                </form>
            
       </div>
  
</body>
</html>