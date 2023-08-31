<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세</title>
</head>
<style>
 /* Custom CSS styles for the table */
.content_area table {
  border-collapse: collapse;
  width: 80%;
  margin: auto;
  margin-top: 20px;
}

.content_area td {
  padding: 10px;
  border: 1px solid #ccc;
  text-align: left;
}

.content_area th {
  background-color: #f2f2f2;
  font-weight: bold;
  padding: 10px;
  border: 1px solid #ccc;
}

.content_area img {
  display: block; /* Added this line */
  margin: auto; /* Added this line */
  max-width: 250px;
  max-height: 350px;
  border: 1px solid #ccc;
  padding: 5px;
}

.rent-button {
  font-size: 20px;
  padding: 5px 10px;
  background-color: #3498db;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.rent-button:hover {
  background-color: #2980b9;
}
</style>
<link rel="stylesheet" href="../css/lib.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>



<script>
$(function(){ 
    $(".rent-button").click(function(){
        let userid = "${sessionScope.SessionUserID }";
        let unq = ${vo.unq};

        if (userid === "admin") {
            let id1 = prompt("아이디를 입력하세요:");
            if (id1) {
                $.ajax({
                    type: "POST",
                    data: {"unq": unq, "id": id1},
                    url: "/bookRentSave.do",
                    dataType: "text",  
                    success: function(data){
                        if (data === "overRent") {
                            alert("1인당 3권까지 대여 가능합니다.");
                        } else if (data === "ok") {
                            alert("대여완료 ! \n대여기간은 7일입니다.");
                            location = "/bookReturn.do";
                        } else if (data === "notMember") {
                        	alert("존재하지 않는 아이디입니다.");
                        } else {
                            alert("저장 실패!");
                        }
                    },
                    error: function(){
                        alert("전송 실패");
                    }
                });
            }
        } else {
            $.ajax({
                type: "POST",
                data: {"unq": unq, "id": userid},
                url: "/bookRentSave.do",
                dataType: "text",  
                success: function(data){
                    if (data === "overRent") {
                        alert("1인당 3권까지 대여 가능합니다.");
                    } else if (data === "ok") {
                        alert("대여완료 ! \n대여기간은 7일입니다.");
                        location = "/bookRent.do";
                    } else {
                        alert("로그인 후 이용가능합니다.");
                    }
                },
                error: function(){
                    alert("전송 실패");
                }
            });
        }
    });
});
</script>

<body>
    <header class="header1">
        <%@include file="../include/header1.jsp" %>
    </header>
    <header class="header2">
        <%@include file="../include/header2.jsp" %>
    </header>

    <nav class="nav">
        <%@include file="../include/nav.jsp" %>
    </nav>

    <section class="section1">
        <div class="sec1">
            <aside class="aside">
                <%@include file="../include/aside2.jsp" %>
            </aside>

            <div class="flex-item">
                <div class="container" style="border:0px solid black; margin-left:300px;">

                    <div class="content_area">
                        <form name="frm" id="frm">

                            <input type="hidden" name="unq" id="unq" value="${vo.unq }">

                            <table align="center" height="800px;" border="1">
                                <tr>
                                    <th width="20%">제목</th>
                                    <td>${vo.title }</td>
                                </tr>
                                <tr>
                                    <th>썸네일</th>
                                    <td height="400px;"><img src="${vo.thumbnail}" alt="표지 이미지" style="width: 250px; height: 350px;"></td>
                                </tr>
                                <tr>
                                    <th>저자</th>
                                    <td>${vo.authors }</td>
                                </tr>
                                <tr>
                                    <th>출판사</th>
                                    <td>${vo.publisher }</td>
                                </tr>
                                <tr>
                                    <th>출판일</th>
                                    <td>${vo.datetime }</td>
                                </tr>
                                <tr>
                                    <th>ISBN</th>
                                    <td>${vo.isbn }</td>
                                </tr>
                                <tr>
                                    <th>줄거리</th>
                                    <td>
                                        <div>${vo.contents}</div>
                                    </td>
                                </tr>
                            </table>

                        </form><br>

                        <c:if test="${vo.id == null }">
                            <button type="submit" class="rent-button" style="font-size: 15px; padding: 5px 5px;">대여하기</button>
                        </c:if>

                        <c:if test="${vo.id != null }">
                            <span style="color: red; font-size: 20px;">대여중인 도서입니다.</span>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <%@include file="../include/footer.jsp" %>
    </footer>
    <aside class="new-aside">
        <%@include file="../include/newaside.jsp" %>
    </aside>
</body>
</html>