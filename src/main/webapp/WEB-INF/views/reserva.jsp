<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
   <link href="<c:url value='/static/css/styles.css'/>" rel="stylesheet"></link>
   <link  href="<c:url value='/static/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet"></link>
    <!-- Bootstrap CSS -->
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<title>Hotel - Reserva</title>
  </head>
  <body>
  
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Sistema de Hotel</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav menu">
        <li><a href="/ProjetoJavaWeb/categoria">Categorias</a></li>
        <li><a href="/ProjetoJavaWeb/quarto">Quartos</a></li>
        <li><a href="/ProjetoJavaWeb/hospede">Hóspedes</a></li>
        <li class="active"> <a href="/ProjetoJavaWeb/reserva">Reservas</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right menu">
       <div class="navbar-form navbar-left">
        <div class="form-group has-feedback" >
          <input type="text" id="search" class="form-control" placeholder="Busca">
          <i class="glyphicon glyphicon-search form-control-feedback"></i>
        </div>
     </div>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${usuario.login}<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/ProjetoJavaWeb/logout">Sair</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br><br>

<h2 class="header-cat"> Listagem de Reservas </h2>
 <br><br>
 

 
 <div class="container">
 <button class="btn btn-success" data-toggle="modal" data-target=".bd-example-modal-md">Novo</button>
 <br>
 <br>
  <table id="myTable" class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Código</th>
        <th>Nome do Hóspede</th>
        <th>Quarto</th>
        <th>Valor pago</th>
        <th>Status</th>
        <th>Data de CheckIn</th>
        <th>Data de CheckOut</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody>
	    <c:forEach var="reserva" items="${reservas}">
	      <tr>
	        <td>${reserva.id}</td>
	        <td>${reserva.hospede.nome}</td>
	        <td>${reserva.quarto.numero}</td>
	        <td>${reserva.valorPago}</td>
	        <td>${reserva.status}</td>
	        <td><fmt:formatDate pattern="dd/MM/yyyy" value="${reserva.dataCheckIn}"/></td>
	        <td><fmt:formatDate pattern="dd/MM/yyyy" value="${reserva.dataCheckOut}"/></td>
	        <td><a href="/ProjetoJavaWeb/alterarReserva?id=${reserva.id}"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp;&nbsp;
	        <a href="/ProjetoJavaWeb/removerReserva?id=${reserva.id}"><span class="glyphicon glyphicon-trash"></span></a>
	        </td>
	      </tr>
	    </c:forEach>
    </tbody>
  </table>
</div>
 
 <nav class="navbar navbar-inverse navbar-fixed-bottom navbar-light bg-faded">
  <a class="navbar-brand" href="#">Copyright: Lucas Figueiredo / Raphael Ribeiro / Welton Matos</a>
</nav>

<!-- modal ADD -->
<div class="modal fade bd-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <h4>Cadastro de Reservas</h4>
         
      </div>
      <form method="post" action="cadastrarReserva">
      <div class="modal-body">
        
         <div class="container">
         
         <div class="col-md-3 loco">
          <div class="form-group">
          <label for="sel1">Hóspede:</label>
          <select class="form-control" name="hospede">
            <c:forEach var="hosp" items="${hospedes}">
		      <option value="${hosp.id}">${hosp.nome}</option>
		    </c:forEach>
          </select>
        </div>
         
          <div class="form-group">
          <label for="sel1">Quarto:</label>
          <select class="form-control" name="quarto">
            <c:forEach var="quart" items="${quartos}">
		      <option value="${quart.id}">${quart.numero}</option>
		    </c:forEach>
          </select>
        </div>
         <b>Data CheckIn:</b>
          <input type="date" name="dataCheckIn" min="2016-11-01" class="form-control" placeholder="">
          <br>
          <br>
          </div>
          <div class="col-md-3">
             <b>Valor Pago:</b>
          <input type="text" name="valorPago" class="form-control" placeholder=""> 
             <br>
             <div class="form-group">
          <label for="sel1">Status:</label>
          <select class="form-control" name="status">
            <option value="Pago">Pago</option>
            <option value="Não Pago">Não Pago</option>
          </select>
        </div>
             <b>Data CheckOut:</b>
          <input type="date" name="dataCheckOut" min="2016-11-02" class="form-control" placeholder="">
              
          </div>
          </div>
      </div>
      <div class="modal-footer">
          
          <button class="btn btn-success" type="submit">Cadastrar</button>
      </div>
  </form>
    </div>
    </div>
</div>
  
<c:if test="${(edit == true) && (reserva != null)}">
  <!-- modal Edit -->
<div class="modal fade modal-edit" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <h4>Alteração de Reservas</h4>
         
      </div>
      <form method="post" action="alterarReserva">
      <div class="modal-body">
        
         <div class="container">
         
         <div class="col-md-3 loco">
          <div class="form-group">
          <input type="hidden" class="form-control" name="id" value="${reserva.id}" placeholder="">
          <label for="sel1">Hóspede:</label>
          <select class="form-control" name="hospede">
            <c:forEach var="hosp" items="${hospedes}">
          	<c:if test="${hosp.id == reserva.hospede.id}">
          		<option value="${hosp.id}" selected>${hosp.nome}</option>
          	</c:if>
          	<c:if test="${hosp.id != reserva.hospede.id}">
            	<option value="${hosp.id}">${hosp.nome}</option>
            </c:if>
          </c:forEach>
          </select>
        </div>
         
          <div class="form-group">
          <label for="sel1">Quarto:</label>
          <select class="form-control" name="quarto">
            <c:forEach var="quart" items="${quartos}">
          	<c:if test="${quart.id == reserva.quarto.id}">
          		<option value="${quart.id}" selected>${quart.numero}</option>
          	</c:if>
          	<c:if test="${quart.id != reserva.quarto.id}">
            	<option value="${quart.id}">${quart.numero}</option>
            </c:if>
          </c:forEach>
          </select>
        </div>
         <b>Data CheckIn:</b>
          <input type="date" name="dataCheckIn" value="${reserva.dataCheckIn}" class="form-control" placeholder="">
         
          <br>
          <br>
          </div>
          <div class="col-md-3">
             <b>Valor Pago:</b>
          <input type="text" name="valorPago" value="${reserva.valorPago}" class="form-control" placeholder=""> 
             <br>
             <div class="form-group">
          <label for="sel1">Status:</label>
          <select class="form-control" name="status">
            <option value="Pago">Pago</option>
            <option value="Não Pago">Não Pago</option>
          </select>
        </div>
             <b>Data CheckOut:</b>
          <input type="date" name="dataCheckOut" value="${reserva.dataCheckOut}" class="form-control" placeholder="">
              
          </div>
          </div>
      </div>
      <div class="modal-footer">
          
          <button class="btn btn-success" type="submit">Alterar</button>
      </div>
  </form>
    </div>
    </div>
</div>
</c:if>
  
<c:if test="${(edit == false) && (reserva != null)}">
   <!-- Modal REMOVE -->
  <div class="modal fade modal-remove" id="modal-remove" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
      <div class="modal-body">
         <div class="container">
             <h4>Você tem certeza que deseja excluir essa Reserva?</h4>
          </div>
          
        </div>
        <div class="modal-footer">
        <form method="post" action="removerReserva">
          <input type="hidden" class="form-control" name="id" value="${reserva.id}" placeholder="">
          <button class="btn btn-success" type="submit">Remover</button>
        </form>
      </div>
    </div>
    </div>
  </div>
  </div>
</c:if>

  </body>
  

  
  <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    
<script>
$('#modal-edit').modal('toggle');
$('#modal-remove').modal('toggle');
</script>    

      <script>
$('.menu li').click(function(e) {
    
    var lis = $('.menu li');
    var $this = $(this).find('a').html();
    
    
    $(this).addClass("active");
    
    lis.each(function(index,element){
        var li = $(element).find('a').html();
        console.log($this);
        if ($this != li)
            $(this).removeClass('active');
    
    });
    
});
    </script>
    
    <script>
$("#search").on("keyup", function() {
    var value = $(this).val();

    $("table tr").each(function(index,element) {
        if (index !== 0) {
            
            var found = false;
            
            $(element).find("td").each(function(index,element){
                
                if($(element).text().trim().toLowerCase().substring(0,value.length) == value.toLowerCase()){
                   $(this).parent("tr").show();
                    found = true;
                }
            });
            
            
            if(!found){
                $(this).hide();
            }   
        }
    });
});
    </script>
  

</html>