<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="pt-br">
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	
		<title> Negociação de Mercadorias </title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
	
	<div class="container">
			<form action="controller.do" method="get">
				<h3 class="page-header">Cadastro de Mercadoria</h3>
				<div class="col-md-12 col-sm-12 col-xs-12">				
					<div class="form-group">
    					<label for="nomeMercadoria">Nome da Mercadoria</label>
    					<input type="text" class="form-control" name="nome" id="nome" placeholder="Digite o Nome da Mercadoria">
  					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">				
					<div class="form-group">
    					<label for="qtdMercadoria">Quantidade</label>
    					<input type="text" class="form-control" name="quantidade" id="quantidade" placeholder="Digite a quantidade">
  					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">				
					<div class="form-group">
    					<label for="precoMercadoria">Preço</label>
    					<input type="text" class="form-control" name="preco" id="preco" placeholder="Digite o valor da unidade">
  					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">				
					<div class="form-group">
    					<label for="codMercadoria">Código da Mercadoria</label>
    					<input type="text" class="form-control" name="codigo" id="codigo" placeholder="Digite o código da Mercadoria">
  					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">				
					<div class="form-group">
    					<label for="tipoMercadoria">Tipo de Mercadoria</label>
    					<input type="text" class="form-control" name="tipo" id="tipo" placeholder="Digite o tipo da Mercadoria">
  					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12">	
					<div class="form-group">			
						<select class="custom-select">
  							<option value="1">Compra</option>
  							<option value="2">Venda</option>
  						</select>
  					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12" align="center">
					<button type="submit" class="btn btn-primary" name="command" value="CriarMercadoria">Cadastrar</button>
				</div>
				
			</form>
		</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>