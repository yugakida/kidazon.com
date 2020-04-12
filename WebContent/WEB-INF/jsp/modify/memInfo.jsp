<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>会員情報</title>
  </head>
  <body>
    <jsp:include page="../share/header.jsp" />
    <h3>●会員情報</h3>
    <table border="1">
      <tr>
        <th>会員NO</th>
        <td>${ userInfo.memberNo }</td>
      </tr>
      <tr>
      <tr>
        <th>氏名</th>
        <td>${ userInfo.name }</td>
      </tr>
      <tr>
        <th>年齢</th>
        <td>${ userInfo.age }</td>
      </tr>
      <tr>
        <th>性別</th>
        <td>
          <c:choose>
            <c:when test="${ userInfo.sex == 'M' }">
              <p>男性</p>
            </c:when> 
            <c:when test="${ userInfo.sex == 'F' }">
              <p>女性</p>
            </c:when>
          </c:choose>
        </td>
      </tr>
      <tr>
        <th>郵便番号</th>
        <td>${ userInfo.zip }</td>
      </tr>
      <tr>
        <th>住所</th>
        <td>${ userInfo.addr }</td>
      </tr>
      <tr>
        <th>電話番号</th>
        <td>${ userInfo.tel }</td>
      </tr>
      <tr>
        <th>登録日</th>
        <td><fmt:formatDate value="${ userInfo.registerDate }" pattern="yyyy/MM/dd" /></td>
      </tr>
    </table>
    <button type="button" onclick="location.href='modifyMemInfo.html'">修正</button>
    <button type="button" onclick="location.href='../destroy/confDestroy.html'">削除</button>
    <button type="button" onclick="location.href='../userMenu.html'">戻る</button>
  </body>
</html>