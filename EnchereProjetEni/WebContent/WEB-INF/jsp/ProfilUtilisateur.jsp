<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width= , initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Inscription</title>
</head>
<body>
<body style="background-color: #F2EEE8;">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #E4CDA7;">
		<div class="container">
			<a class="navbar-brand" href="PagePrincipale"><img
				src="logo_enchere.png" height="50" width="90"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<!-- ms-auto = margin-left:auto -->
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="PagePrincipale">Accueil</a></li>
					<li class="nav-item"><a class="nav-link"
						href="PublicationVente">Vendre un article</a></li>
					<li class="nav-item"><a class="nav-link" href="Profil">Mon
							Profil : <c:out value="${sessionScope.pseudo}" />
					</a></li>
					<li class="nav-item"><a class="nav-link" href="EnchereEnCours">Enchères</a></li>
					<li class="nav-item"><a class="nav-link" href="Deconnection">Déconnexion</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="container ">
		<h1 class="text-center">Mon Profil</h1>
		<br>
		<br>
		<br>
			<div class="row">


				<div class="container-fluid">
					<div class="row">
					
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputPseudo"><strong>Pseudo:</strong></label>

						</div>
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputpseudo"><c:out
									value="${sessionScope.pseudo}" /></label>
						</div>
					</div>
				</div>

				<br>

				<div class="container-fluid">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputPrenom"><strong>Nom:</strong></label>
						</div>
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<c:out value="${requestScope.nom}" />
						</div>
					</div>
				</div>
				<br>

				<div class="container-fluid">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputTelephone"><strong>Prénom:</strong></label>
						</div>
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<c:out value="${requestScope.prenom}" />
						</div>
					</div>
				</div>

				<br>

				<div class="container-fluid">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputCP"><strong>Email:</strong></label>
						</div>
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<c:out value="${requestScope.email}" />
						</div>
					</div>
				</div>

				<br>

				<div class="container-fluid ">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputPassword"><strong>Téléphone:</strong></label>
						</div>

						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<c:out value="${requestScope.tel}" />
						</div>
					</div>
				</div>
				<br>

				<div class="container-fluid">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputPassword"><strong>Rue:</strong></label>
						</div>

						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<c:out value="${requestScope.rue}" />
						</div>
					</div>
				</div>

				<br>

				<div class="container-fluid">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputPassword"><strong>Code Postal:</strong></label>
						</div>

						<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<c:out value="${requestScope.cp}" />
						</div>
					</div>
				</div>

				<br>
				<div class="container-fluid">
					<div class="row">
						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<label for="inputPassword"><strong>Ville:</strong> </label>
						</div>

						<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<c:out value="${requestScope.ville}" />
						</div>
					</div>
				</div>

				<br> <br> <br>

				<div class="container-fluid">
					<div class="row">

						<a href="./ModifProfilUtilisateur"><button type="button"
								class="btn btn-dark btn-block"
								style="background-color: #8E806A;">Modifier mon profil</button></a>
						<br />
						<br> <a href="./PagePrincipale"><button type="button"
								class="btn btn-dark btn-block"
								style="background-color: #8E806A;">Retour</button></a>
					</div>

				</div>
			</div>
		</div>
	</div>
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

</body>
<footer class="text-center text-dark" style="background-color: #E4CDA7;">
	<!-- Grid container -->
	<div class="container p-4">
		<!-- Section: Social media -->
		<section class="mb-4">
			<!-- Facebook -->
			<a class="btn btn-outline-light btn-floating m-1"
				href="https://fr-fr.facebook.com
" role="button"><i
				class="fab fa-facebook-f"></i></a>

			<!-- Twitter -->
			<a class="btn btn-outline-light btn-floating m-1"
				href="https://twitter.com/" role="button"><i
				class="fab fa-twitter"></i></a>

			<!-- Google -->
			<a class="btn btn-outline-light btn-floating m-1"
				href="https://www.google.com/" role="button"><i
				class="fab fa-google"></i></a>

			<!-- Instagram -->
			<a class="btn btn-outline-light btn-floating m-1"
				href="https://www.instagram.com/" role="button"><i
				class="fab fa-instagram"></i></a>

			<!-- Linkedin -->
			<a class="btn btn-outline-light btn-floating m-1"
				href="https://www.linkedin.com/" role="button"><i
				class="fab fa-linkedin-in"></i></a>

			<!-- Github -->
			<a class="btn btn-outline-light btn-floating m-1"
				href="https://github.com/" role="button"><i
				class="fab fa-github"></i></a>
		</section>
		<!-- Section: Social media -->

		<!-- Section: Form -->
		<section class="">
			<form action="">
				<!--Grid row-->
				<div class="row d-flex justify-content-center">
					<!--Grid column-->
					<div class="col-auto">
						<p class="pt-2">
							<strong>Inscrivez-vous pour recevoir nos news-letters</strong>
						</p>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-5 col-12">
						<!-- Email input -->
						<div class="form-outline form-white mb-4">
							<input type="email" id="form5Example21" class="form-control" />
							<label class="form-label" for="form5Example21">Adresse
								email:</label>
						</div>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-auto">
						<!-- Submit button -->
						<button type="submit" class="btn btn-outline-light mb-4">
							souscription</button>
					</div>
					<!--Grid column-->
				</div>
				<!--Grid row-->
			</form>
		</section>
		<!-- Section: Form -->

		<!-- Section: Text -->
		<section class="mb-4">
			<p>Sur Les objets sont nos amis, on s’échange des biens, des
				services, on se prête du matériel, avec ou sans noisette, la monnaie
				collaborative du site. les credits Troc : Reconnu d’utilité sociale
				et solidaire, agréé ESUS, cité par l’ADEME comme outil de transition
				écologique, Les objets sont nos amis s’inscrit dans le développement
				durable.</p>
		</section>
	</div>
	<!-- Grid container -->

	<!-- Copyright -->
	<div class="text-center p-3"
		style="background-color: rgba(0, 0, 0, 0.2);">
		© 2020 Copyright: <a class="text-white"
			href="https://www.eni-ecole.fr/">ENI-ecole</a>
	</div>
	<!-- Copyright -->
</footer>
</html>