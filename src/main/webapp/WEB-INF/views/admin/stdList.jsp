<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" type="text/javascript"></script>
<body>
    <div class="container">
        <table id="myTable" class="table table-striped table-bordered dataTable">
            <thead>
                <tr>
                    <th>No</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>등록일</th>
                    <th>추천수</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
                <script>
                    for (let i = 1; i <= 20; i++) {
                        document.write("<tr>");
                        document.write("<td>" + i + "</td>");
                        document.write("<td>샘플 제목 " + i + "</td>");
                        document.write("<td>작성자 " + i + "</td>");
                        document.write("<td>2024-06-04</td>");
                        document.write("<td>" + Math.floor(Math.random() * 100) + "</td>");
                        document.write("<td>" + Math.floor(Math.random() * 1000) + "</td>");
                        document.write("</tr>");
                    }
                </script>
            </tbody>
        </table>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const myTable = document.querySelector("#myTable");
            const dataTable = new simpleDatatables.DataTable(myTable, {
                
            	labels: {
                    placeholder: "검색",
                    perPage: "항목 표시", 
                    noRows: "표시할 항목이 없습니다", 
                    info: "", 
                }
            
            });
        });
    </script>
</body>
