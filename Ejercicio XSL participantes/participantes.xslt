<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Concurso de participantes</title>
      </head>
      <body>
        <h1>Lista de participantes</h1>
        <table border="1">
          <tr>
            <!-- Cabecera de la tabla -->
            <th>Código</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Edad</th>
            <th>Provincia</th>
            <th>Puntos</th>
          </tr>
          <!-- Aplicar la plantilla a los nodos 'participante' dentro del nodo 'concurso' -->
          <xsl:apply-templates select="concurso/participante"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para los nodos 'participante' -->
  <xsl:template match="concurso/participante">
    <tr>
      <!-- Mostrar los valores de los atributos y elementos correspondientes -->
      <td><xsl:value-of select="@codigo"/></td>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="apellidos"/></td>
      <td><xsl:value-of select="edad"/></td>
      <td><xsl:value-of select="provincia"/></td>
      <td><xsl:value-of select="puntos"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>