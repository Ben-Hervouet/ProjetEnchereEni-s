<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= , initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Inscription</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="#">Les objets sont nos amis</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <!-- ms-auto = margin-left:auto -->
          <ul class="navbar-nav ms-auto">
           <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="accueil">Accueil</a>
           </li>
           <li class="nav-item">
              <a class="nav-link" href="#">Profil</a>
           </li>
           <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
           </li>
           <li class="nav-item">
              <a class="nav-link" href="PageConnexion">S'inscrire / Se connecter</a>
           </li>
         </ul>
      </div>
   </div>
</nav>
<div class="container my-6 col-6 p-5">
	<h1> ENI-Encheres</h1>
<p>Mon Profil</p>
<form method="post" action="./ModifProfilUtilisateur">

<div class="input-group col-4 py-4">
	  	<div class="form-group col-my-4">
	      <label for="inputPseudo">Pseudo:</label><br>
	    </div>
	    <div class="form-group col-my-4">
	      <label for="inputModifNom">Nom:</label>
	      <input type="text" class="form-control" id="inputModifNom" placeholder="Dupond" required>
	    </div>
    </div>
  
  <br>

  <div class="input-group">
    <div class="form-group col-my-4">
      <label for="inputModifPrenom">Prénom:</label>
      <input type="text" class="form-control" id="inputModifPrenom" placeholder="Camille" required>
    </div>
    <div class="form-group col-my-4">
      <label for="inputModifEmail">Email:</label>
      <input type="email" class="form-control" id="inputModifEmail" placeholder="exemple@outlook.fr" required>
    </div>
  </div>
  
  <br>

  <div class="input-group">
    <div class="form-group col-my-4">
      <label for="inputModifTel">Telephone:</label>
      <input type="tel" class="form-control" id="inputModifTel" placeholder="0623637303" required>
    </div>
    <div class="form-group col-my-4">
      <label for="inputModifRue">Rue:</label>
      <input type="text" class="form-control" id="inputModifRue" placeholder="9 Rue Gambetta" required>
    </div>
  </div>
  
  <br>

  <div class="input-group">
	    <div class="form-group col-my-4">
	      <label for="inputModifCP">Code postal:</label>
	      <input type="number" class="form-control" id="inputModifCP" placeholder="44000" required>
	    </div>
	    <div class="form-group col-my-4">
	      <label for="inputModifVille">Ville:</label>
	      <input type="text" class="form-control" id="inputModifVille" placeholder="Nantes" required>
	    </div>
  </div>
  
	<div class="input-group">
		<div class="form-group col-my-4">
			<label for="inputCurMDP">Mot de passe actuel:</label>
			<input type="password" class="form-control" id="inputCurMDP" placeholder="*****" required>
		</div>
	</div>

  
	<div class="input-group">
		<div class="form-group col-my-4">
			<label for="inputNewMDP">Nouveau mot de passe:</label>
			<input type="password" class="form-control" id="inputNewMDP" placeholder="*****" required>
		</div>
		<div class="form-group col-my-4">
			<label for="inputConfirmMDP">Confirmation:</label>
			<input type="password" class="form-control" id="inputConfirmMDP" placeholder="*****" required>
		</div>
	</div>
    <br>
    <div>Crédit:</div>
    <br>
    <div class="input-group">
		<div class="form-group col-my-4">
			   	<button type="submit" class="btn btn-dark" name="sEnregistrer">Enregistrer</button>
		</div>
		<div class="form-group col-my-4">
	    	<a href="./SupProfil"><button type="submit" class="btn btn-dark">Supprimer</button></a>
		</div>
  	</div>
  	
  </form>
</div>


  
</body>
<footer class="container-fluid bg-dark p-5 text-white">
	<div class="container text-center">&copy; 2021–2021 copyright</div>
</footer>
</html>