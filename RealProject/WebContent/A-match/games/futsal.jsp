<%@ page language="java" contentType="text/html; charset=euc-kr"
   pageEncoding="euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='resources/packages/core/main.css' rel='stylesheet' />
<link href='resources/packages/daygrid/main.css' rel='stylesheet' />
<script src='resources/packages/core/main.js'></script>
<script src='resources/packages/interaction/main.js'></script>
<script src='resources/packages/daygrid/main.js'></script>
<script>
	
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      defaultDate: '2019-07-12',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
    		<c:forEach var="article" items="${articleList}" varStatus="status">
   				{
		   			title: '${article.subject}',
		   			start: '${article.reg_date_string}',
		   			end: '${article.reg_date_string}',
		   			url: 'futsalList.do?date=${article.reg_date_string}'
		   		}
   				<c:if test="${not status.last }">,</c:if>
    		</c:forEach>
      ],
      eventClick: function(event) {
    	  if(event.event.title) {
    		  location.href = event.event.url;
    		  //location.replace(url);
    		  return false;
    	  }
      }
    });

    calendar.render();
  });
</script>
<style>

  body {
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
  	
    max-width: 900px;
    margin: 0 auto;
    margin-top: 130px;
  }

</style>
</head>
<body>
	<div class="hero-wrap js-fullheight"
		style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-right justify-content-start"
				data-scrollax-parent="true">
					<div id='calendar'></div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
