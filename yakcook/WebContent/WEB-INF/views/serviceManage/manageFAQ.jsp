<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>FAQ 목록</title>
<link rel="stylesheet" href="/yakcook/resources/css/serviceManage/manageFAQ.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/manager/managerHeader.jsp" %>
	
	<section>
	<div id="tableWrap">
            <span class="title">자주 찾는 질문 FAQ</span>
            <br>
            <a href="manageFAQ" class="category">전체</a>
            <a href="manageFAQ?category=제품" class="category">제품</a>
            <a href="manageFAQ?category=회원관리" class="category">회원관리</a>
            <a href="manageFAQ?category=주문/결제" class="category">주문/결제</a>
            <a href="manageFAQ?category=교환/반품" class="category">교환/반품</a>
            <a href="manageFAQ?category=기타" class="category">기타</a>
            <table>
                <tr>
                    <th class="t1">분류</th>
                    <th class="t2">제목</th>
                    <c:if test="${manager.managerLevel ge 2}">
						<th>수정</th>
					</c:if>
					<c:if test="${manager.managerLevel ge 3}">
					 	<th>삭제</th>
					</c:if>

                </tr>
                <c:forEach items="${faqList}" var="f">
				<tr class="view">
					<td class="hidetd">${f.faqNumber}</td>
					<td>${f.category}</td>
					<td>${f.faqTitle}</td>
					<c:if test="${manager.managerLevel ge 2}">
						<td><input type="button" class="modiFAQ" value="수정"></td>
					</c:if>
					<c:if test="${manager.managerLevel ge 3}">
					 	<td><input type="button" class="delFAQ" value="삭제"></td>
					</c:if>
				</tr>
				<tr class="content">
					<td colspan="5">${f.faqContent}</td>
				</tr>
				</c:forEach>
            </table>
            <br>
            <div class="btnWrap">
           		<button class="noticeBtn" id="noticeadd">글쓰기</button>
            </div>
            <div class="page-area">
			<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
				<c:if test="${i le paging.maxPage}">
					<%
					if(request.getAttribute("category") != null) {%>
						<div class="paging">
							<a class='page' href="?category=${search}&currentPage=${i}">${i}</a>
						</div>	
					<%}else { %>
						<div class="paging">
							<a class='page' href="?currentPage=${i}">${i}</a>
						</div>
					<%} %>
				</c:if>
			</c:forEach>
		</div>
        </div>
       
        
    </section>

    <script>
    window.onload=()=>{
    	$('.view').on('click', function(){
    		let view = $(this);
			let changer = view.next();
    		if ( changer.css('display') === 'none' ) { 
    			changer.show();
    		} else { 
    			changer.hide();
    		}

    	});
    	$('.logoutbtn').on('click', function(){
			window.location = "/yakcook/managerlogout";
        }); 
    	$('#noticeadd').on('click', function(){
    		window.location = "/yakcook/faqadd";
    	});
    	$(document).on('click', '.modiFAQ', function(){
			let btn = $(this);
			let tr = btn.parent().parent();
			let td = tr.children();
			let url = "/yakcook/modiFAQ?FAQNum=" +  td.eq(0).text();
			window.location = url;
		});
		$(document).on('click','.delFAQ', function(){
			let btn = $(this);
			let tr = btn.parent().parent();
			let td = tr.children();
        	$.ajax({
        		url : '/yakcook/delFAQ',
        		method : 'get',
        		data: {
        			FAQDel : td.eq(0).text()
        		},
        		
        		success : function(result){
       				const data1 = $.trim(result);
       				if(data1 == "true"){
       					alert("FAQ 삭제 완료");
       					location.reload();
        			} else {
        				alert("FAQ 삭제 실패")
        			}	
        		},
        		error : function(err){
        			alert("error");
        		}
        	});
        });  
    }
    </script>
</body>
</html>