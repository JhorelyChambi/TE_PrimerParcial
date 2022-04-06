<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Registro"%>
<%
    ArrayList<Registro> lista = (ArrayList<Registro>)session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina JFCC</title>
    </head>
    <body>
    <center><h1>PRIMER PARCIAL TEM-742</h1></center>
        <center><table border="1">
       <tr><th>
        
        <center><h>Nombre: Jhorely Felicidad Chambi Choque</h></center><br>
        <center><h>Carnet: 10034047</h></center><br>
       </th></tr>
       </table></center>
        <center><h1>Productos</h1></center><br>
    <a href ="MainController?op=nuevo">Nuevo registro</a>
    <center><table border ="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if (lista != null) {
                    for(Registro item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                           onclick='return confirm("Esta seguro de eliminar el registro?");'>Eliminar</a></td>
            </tr> 
            <%
                    }
                }
            %>    
        </table></center>
    </body>
</html>
