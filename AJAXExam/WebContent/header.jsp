<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.security.*, java.io.*, java.net.*" %>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Offcanvas navbar large">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Offcanvas</h5>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          </ul>
<!--           <form class="d-flex mt-3 mt-lg-0" role="search"> -->
<!--             <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"> -->
<!--             <button class="btn btn-outline-success" type="submit">Search</button> -->
<!-- 		</form> -->
		<div class="d-flex mt-3 mt-lg-0">
		<input class="form-control me-2" type="search" id="userName" onkeyup="searchFunction()" placeholder="Search" aria-label="Search">
		<button class="btn btn-outline-success" onclick="searchFunction()" type="submit">Search</button>
        </div>
        </div>
      </div>
    </div>
  </nav>