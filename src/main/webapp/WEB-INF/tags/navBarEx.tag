<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="active" %>

<c:url value="/board1/listEx" var="listLink"/>
<c:url value="/board1/registerEx" var="registerLink"/>


<nav class="navbar navbar-expand-lg" style="background-color: LightSalmon; fontFamily:Charcoal,consolas;">
  <div class="container-fluid">
    <a class="navbar-brand" href="${listLink }">Board</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link ${active == 'list' ? 'active' : '' }" aria-current="page" href="${listLink }">List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" ${active == 'post' ? 'active' : '' } href="${registerLink }">post</a>
        </li>
      </ul>
      
      <form action="${listLink }" class="d-flex" role="search">
	      <select name="t" id="searchTypeSelect" class="form-select">
	      	<option value="all">All</option>
	      	<option value="title" ${param.t == 'title' ? 'selected' : '' }>title</option>
	      	<option value="writer" ${param.t == 'writer' ? 'selected' : '' }>writer</option>
	      	<option value="content" ${param.t == 'content' ? 'selected' : '' }>content</option>
	      </select>
	     
	        <input value="${param.q }" class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="q">
	        <button class="btn btn-outline-success" type="submit" style="background-color: #FA8072; border-color: #FA8072;"><i class="fa-solid fa-magnifying-glass" style="color:white;"></i></button>
      </form>
    </div>
  </div>
</nav>