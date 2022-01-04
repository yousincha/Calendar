<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
<link href='${pageContext.request.contextPath}/resources/fullcalendar-5.1.0/lib/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/fullcalendar-5.1.0/lib/main.js'></script>
<script type='text/javascript'>

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    googleCalendarApiKey: 'Api키',
    eventSources: [
    {
          googleCalendarId: 'addressbook#contacts@group.v.calendar.google.com',
          className: '생일',
          color: '#cafa8e', //rgb,#ffffff 등의 형식으로 할 수 있어요.
          textColor: 'green' 
        },
        googleCalendarId: 'ht3jlfaac5lfd6263ulfh4tql8@group.calendar.google.com',
        className: '달의 위상',
        color: '#ffd9e5', //rgb,#ffffff 등의 형식으로 할 수 있어요.
        textColor: 'orange' 
      },
      {
          googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
          className: '대한민국 공휴일',
            color: '#facf8e',
            textColor: 'red' 
        }
    ]
  });
  calendar.render();
});
</script>
<style>
#calendar{
   width:60%;
   margin:20px auto;
}
</style>
  </head>
  <body>
    <div id='calendar'></div>
  </body>
</html>