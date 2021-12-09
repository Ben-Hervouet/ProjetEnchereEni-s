<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= , initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Accueil Encheres</title>
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
              <a class="nav-link" href="PageConnexion">s'inscrire / se connecter</a>
           </li>
         </ul>
      </div>
   </div>
</nav>
    
<h1> ENI-Encheres</h1>
<div class="container col-2">
	<p>Liste des enchères</p>
	<br>
	
	<p> Filtres: </p>
	
	<div class="input-group ">
		<div class="form-outline">
		    <input id="search-focus" type="search" id="form1" class="form-control" /><button type="button" class="btn btn-dark"><i class="fas fa-search">Rechercher</i> </button>
		    <label class="form-label" for="form1"></label>
		</div>	 
	</div>       

	<br>
		<label for="pet-select">Catégories</label>
		<select name="pets" id="pet-select">
		    <option value="informatique">Toutes</option>
		    <option value="informatique">Informatique</option>
		    <option value="ameublement">Ameublement</option>
		    <option value="vetement">Vetement</option>
		    <option value="sport&loisirs">Sport & Loisirs</option>
		</select>
	
		<!-- Insérer une image des Alpes --> 
		<div class="w3-card-4">
		    <img src="150.png" alt="Alps">
		    <div class="w3-container w3-center">
		      <p>Meuble</p>
		    </div>
		  </div>
 </div>
 </body>
 	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
 <footer class="container-fluid bg-dark p-5 text-white">
      <div class="container text-center">&copy; 2021–2021 copyright</div>
 </footer>
 </html>