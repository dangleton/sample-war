<html>
<head>
<title>Hello World!</title>
</head>
<body>
  <h1>Hello World!</h1>
  <p>
    It is now
    <%= new java.util.Date() %></p>
  <p>
    You are coming from
    <%= request.getRemoteAddr()  %></p>
  <p>
    You can add CPU intensive task to run for a certain amount of time by passing the time in milliseconds to the m
    parameter<br /> e.g. /index.jsp?m=500 will run CPU intensive calculations for 500 ms
  </p>
  <p>
  <%
    String num = request.getParameter("m");
    if (num != null) {
        try {
            long runTimeMilis = Long.parseLong(num.trim());
            long start = System.currentTimeMillis();
            while (System.currentTimeMillis() - start < runTimeMilis) {
                double d = Math.tan(Math.atan(Math.tan(
                        Math.atan(Math.tan(Math.atan(Math.tan(Math.atan(Math.tan(Math.atan(123456789.123456789))))))))));
                Math.cbrt(d);
            }
            out.println( "Ran CPU intensive task for " + num + " ms.");
        } catch (Exception e) {
            out.println( "Cannot parst " + num + " to long value");
        }
    }
    %>
    </p>
</body>