<%-- 
    Document   : Index
    Created on : 29 may. 2020, 16:04:00
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>APP4 TAREA </title>
 </head>
    <body>

<a name="arriba"></a>

En esta página puedes ir al <a href="#primero">primer</a> apartado, al <a href="#segundo">segundo</a> o al <a href="#tercero">tercero</a>.

<a name="primero"><h1>Primer apartado</h1></a>

Aquí tienes el primer apartado. Al pulsar sobre el enlace, el navegador habrá saltado a esta parte de la página. Quizás si todo entra en la pantalla no logres ver el efecto pero prueba a poner más texto aquí o hacer zoom y conseguirás verlo.
<blockquote cite=”https://www.lawebera.es/xhtml-css/conceptos-basicos-html.php“>
  HTML tiene una sintaxis muy sencilla y fácil de comprender,
  el contenido está estructurado en elementos,
  los cuales son declarados mediante el uso
  de etiquetas que proporcionan información
  adicional a través de atributos.
</blockquote>

<a name="segundo"><h1>Segundo apartado</h1></a>

Aquí tienes el segundo apartado. Al pulsar sobre el enlace, el navegador habrá saltado a esta parte de la página. Quizás si todo entra en la pantalla no logres ver el efecto pero prueba a poner más texto aquí o hacer zoom y conseguirás verlo.
<label for="select-comunidad">Selecciona tu comunidad</label>
<select name="comunidad" id="select-comunidad">
    <option value="1">Galicia</option>
    <option value="2">Asturias</option>
    <option value="3">Cantabria</option>
    <option value="4">País Vasco</option>
    <option value="5">Navarra</option>
</select>

<h1>EJEMPLO DE TABLA SENCILLA </h1>

<table>
<tr>
  <td><strong>Curso</strong></td>
  <td><strong>Horas</strong></td>
  <td><strong>Horario</strong></td>
</tr>

<tr>
  <td>CSS</td>
  <td>20</td>
  <td>16:00 - 20:00</td>
</tr>

<tr>
  <td>HTML</td>
  <td>20</td>
  <td>16:00 - 20:00</td>
</tr>

<tr>
  <td>Dreamweaver</td>
  <td>60</td>
  <td>16:00 - 20:00</td>
</tr>
</table>

<a name="tercero"><h1>Tercer apartado</h1></a>

Aquí tienes el tercer apartado. Al pulsar sobre el enlace, el navegador habrá saltado a esta parte de la página. Quizás si todo entra en la pantalla no logres ver el efecto pero prueba a poner más texto aquí o hacer zoom y conseguirás verlo.
<input type="text" placeholder="Aquí puedes ingresar texto">
<ul>

<li type="circle">Esto es un tipo de punto.</li>

<li type="square">Este es otro.</li>

<li type="disc">Y este es otro diferente.</li>

</ul>
Volver <a href="#arriba">arriba</a>.

</body>
</html>