<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="active" %>

<c:url value="/board1/listEx" var="listLink"/>
<c:url value="/board1/registerEx" var="registerLink"/>


<nav class="navbar navbar-expand-lg" style="background-color: LightSalmon;">
  <div class="container-fluid">
    <a class="navbar-brand" href="${listLink }">Board</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${listLink }">List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${registerLink }">register</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
      
      
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>