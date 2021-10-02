<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="INSPIRO" />
    <meta name="description" content="Themeforest Template Polo">
    <!-- Document title -->
    <title>과일</title>
    <!-- Stylesheets & Fonts -->
    <link href="${pageContext.request.contextPath }/CSS/plugins.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/jaeuk.css" type="text/css" rel="stylesheet">
</head>


<body>
<%
String URL = "https://search.shopping.naver.com/search/category?catId=50000960&origQuery&pagingIndex=1&pagingSize=40&productSet=total&query&sort=rel&timestamp=&viewType=thumb";
Document doc = Jsoup.connect(URL).get();

Elements el = doc.getElementsByAttributeValue("class", "imgList_link__XUg6J");


System.out.println(el.text());

%>


	<jsp:include page="header.jsp"/>
    <!-- Body Inner -->
                <!-- Content -->
        <section id="page-content">
            <div class="container">
            <div class="div5">
            <h3>과일류</h3>
         	</div>
         	
         	
         	<div class="space">
         	
       
         	</div>
         	
                <!-- Blog -->
                <div id="blog" class="grid-layout post-4-columns m-b-30" data-item="post-item">
                    <!-- Post item-->
                    <c:forEach var="i" begin="3" end="14">
                    <div class="post-item border" style="height: 440px;">
                        <div class="post-item-wrap">
                            <div class="post-image">
                                <a href="#">
                                    ${product_fruit[i].pro_img}
                                </a>
                            </div>
                           	<div class="post-item-description">
								<h2>
									<a href="#">${product_fruit[i].pro_name }</a>
								</h2>
								<p>${product_fruit[i].pro_price }</p>
							</div>
						</div>    
						</div>             
                  	</c:forEach>	
                  </div>
                </div>
              
         </section>
                  
                   
     <script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
    <script src="${pageContext.request.contextPath }/JS/functions.js"></script>
 
</body>

</html>