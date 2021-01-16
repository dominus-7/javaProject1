<%@page import="web.CreditModel"%>
<%@page import="metier.CreditMetierImpl"%>
<%
	CreditModel model = (CreditModel) request.getAttribute("creditModel");
%>


<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

	
    <title>Simulateur de crédit</title>
  </head>
  <body class="d-flex flex-column h-100">
    <header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Accueil </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Nous contacter</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Disabled</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Chercher</button>
      </form>
    </div>
  </nav>
</header>


<main role="main" class="flex-shrink-0">
  <div class="container">
		<div class="col-md-6 col-xm-12 col-sm-6">
			<div class="panel ">
				<div class="card-header">Simulateur de crédit</div>
				<div class="panel-body">
					<form action="calculMensualite.do" method="post">
						<div class="form-group">
							<label class="control-label">Montant:</label> <input
								class="form-control" type="text" name="montant"
								value="<%=model.getMontant()%>">
						</div>
						<div class="form-group">
							<label class="control-label">Taux:</label> <input
								class="form-control" type="text" name="taux"
								value="<%=model.getTaux()%>">
						</div>
						<div class="form-group">
							<label class="control-label">Durée:</label> <input
								class="form-control" type="text" name="duree"
								value="<%=model.getDuree()%>">
						</div>
						<button class="btn btn-success" type="submit">Calculer</button>


					</form>
					<div>
						<label>Mensualité:</label> <button class="btn btn-success"><%=model.getMensualite()%></button>

					</div>
				</div>
			</div>

		</div>
	</div>
</main>

<!-- Begin page content -->




<footer class="footer mt-auto py-3">
  <div class="container">
    <span class="text-muted">Bienvenue dans votre Banque!.</span>
  </div>
</footer>
</body>
</html>
