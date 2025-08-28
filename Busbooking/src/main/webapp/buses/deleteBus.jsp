<%@ include file="../dbc.jsp" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    try {
        PreparedStatement ps = conn.prepareStatement("DELETE FROM buses WHERE bus_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        response.sendRedirect("listBuses.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
