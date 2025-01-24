<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="APITest"></c:set>

<script>
	const API_KEY = 'S15Q20%2BeKCS9XCxG%2BBSU%2FyMA3XAfmRYgzURInD%2BA5qWVaViHx2JBGK2G8g7S8F2cipeL1lLYJoFto1DX2FxpNw%3D%3D';

	async function getCData() {
		const url = 'https://apis.data.go.kr/B554035/tmr-forecast/get_tmr-forecast?serviceKey='
			+ API_KEY
		    + '&numOfRows=10'
		    + '&pageNo=1'
		    + '&dataType=JSON';
		const response = await
		fetch(url);
		const data = await
		response.json();
		console.log("data", data);
	}

	getCData();
</script>


<%@ include file="../common/head.jspf"%>



<%@ include file="../common/foot.jspf"%>