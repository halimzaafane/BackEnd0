<?php

function getAdmin($email, $password){
  
  if(require("connexion.php")){

    $req = $access->prepare('SELECT * FROM `admin` WHERE id=?');

    $req->execute();

    if($req->rowCount() == 1){
      
      $data = $req->fetchAll(PDO::FETCH_OBJ);

      foreach($data as $i){
        $mail = $i->email;
        $mdp = $i->motdepasse;
      }

      if($mail == $email AND $mdp == $password)
      {
        return $data;
      }
      else{
          return false;
      }

    }

  }

}

function afficher()
{
	if(require("connexion.php"))
	{
		$req=$access->prepare('SELECT * FROM `jeux` ORDER BY `ID_Jeux` DESC');

        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        return $data;

        $req->closeCursor();
	}
}

?>