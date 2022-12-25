<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet">
	</head>
	
	<body>
		<main>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="<%=request.getContextPath()%>">Codo a Codo</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/alta.jsp">Alta</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/api/ListadoController">Listado</a>
							</li>
						</ul>
						<form class="d-flex"
							  action="<%=request.getContextPath()%>/api/BuscarController"
							  method="get">
							<input name="clave" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Buscar</button>
						</form>
					</div>
				</div>
			</nav>
			<div class="container">
				<section>
					<% 
					  	Producto producto = (Producto)request.getAttribute("producto");
				  	%>
					<h1>Editar producto ID=<%=producto.getIdProducto()%></h1>
					<!--  JSP -->
					<form method="POST"
						action="<%=request.getContextPath()%>/api/EditarController">
						<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Nombre</label>
						  <input name="nombre"
						  	value="<%=producto.getNombre()%>"  
						  	type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Precio</label>
						  <input name="precio"
						  	value="<%=producto.getPrecio()%>" 
						  	type="number" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Im&aacute;gen</label>
						  <input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
						  <input name="codigo"
						  	readonly="readonly"
						  	value="<%=producto.getCodigo()%>" 
						  	type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
						</div>
						<button class="btn btn-primary">
							Grabar
						</button>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>