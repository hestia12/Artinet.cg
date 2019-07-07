<?php
require_once(../database/con.php);
session_start();
$user='ORNELLA';
$mdp_definit='1234';
if (isset($_POST['Connexion'])) {
       
   $nom=$_POST['nom'];
    $mode_passe=$_POST['mode_passe'];
        if ($nom&&$mode_passe) {

            if ($nom==$user&&$mode_passe==$mdp_definit) {

                $_SESSION['nom']=$nom;
                //header('location:Menu_adm.php');
            }else{

                echo "Identifiants éronnes";
            }
        } else{
            echo "veuillez remplire tout les champs";
        }


    }

?>