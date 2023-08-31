<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인2</title>
</head>
<link rel="stylesheet" href="../css/lib.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<style>
button {
    border: none;
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    margin: 0 10px;
  }


</style>

<script>
</script>

<body>
   <header class="header1">
      <%@include file = "../include/header1.jsp" %>
   </header>
   <header class="header2">
      <%@include file = "../include/header2.jsp" %>
   </header>
   <nav class="nav">
      <%@include file = "../include/nav.jsp" %>
   </nav>
   <section class="section1">
      <div class="sec1">
            <aside class="aside">
               <%@include file = "../include/aside.jsp" %>
            </aside>
            <div class="flex-item">
               <div class="container" style="border:0px solid black; margin-left:300px;" >
               <div class="content_area">
            
                <table align="center" height="400px;" border="1" style="width: 800px;">
                   <tr>
                       <th width="20%" >제목</th>
                       <td>${vo.title}</td>
                   </tr>
                   <tr>
                       <th>일정</th>
                       <td>${vo.year}년 ${vo.month }월 ${vo.day }일</td>
                   </tr>
                   <tr>
                       <th>내용</th>
                       <td height="400px;" style="text-align: left; vertical-align: top;">${vo.content}</td>
                   </tr>
               
                </table>
                
                <button type="button" onclick="history.back();" style="margin-top: 15px;">뒤로가기</button>
              
               </div>
               </div>
            </div>
      </div>
   </section>
   
   <footer class="footer">
         <%@include file = "../include/footer.jsp" %>
   </footer>
   <aside class="new-aside">
    <%@include file="../include/newaside.jsp"%>
   </aside>

</body>
</html>