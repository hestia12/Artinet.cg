<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Connexion client</title>
   
     
   <link rel="stylesheet" type="text/css" href="../admin.css"/>
   
 
</head>
    <body>
        
       <div class="box">
            
            <h1>Connexion</h1>

                <form method="POST" action="#">
                    
                    <div class="input-goup">
                        <input type="text" name="pseudo">
                        <label>Pseudo</label>
                    </div>
                    

                    <div class="input-goup">
                        <input type="password" name="mode_passe">
                        <label>Mode de passe</label>
                    </div>


                    

                    <div class="input-group">

                        <input type="submit" class="btn" name="connexion" value="Envoyer"><br/>
                    
                    </div>
 
                    <p>
                      Est vous déjà inscrit <a href="index.client.php">Sing.in</a>
                    </p>

                     
                </form>
            
       </div>
  
</body>
</html>