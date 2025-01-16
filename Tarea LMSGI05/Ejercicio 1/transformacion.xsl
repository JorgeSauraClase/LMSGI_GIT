<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Tabla de Artistas</title>
        <meta charset="UTF-8"/>
      </head>
      <body>
        <h1>Tabla de Artistas</h1>
        <table border="1" cellpadding="5" cellspacing="0" width="100%">
          <thead>
            <tr>
              <th align="left" bgcolor="#f2f2f2">Código</th>
              <th align="left" bgcolor="#f2f2f2">Nombre</th>
              <th align="left" bgcolor="#f2f2f2">Año de nacimiento</th>
              <th align="left" bgcolor="#f2f2f2">Año de fallecimiento</th>
              <th align="left" bgcolor="#f2f2f2">País</th>
              <th align="left" bgcolor="#f2f2f2">Página web</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="artistas/artista[nacimiento &gt; 1500]">
              <xsl:sort select="nacimiento" order="ascending"/>
              <tr>
                <td><xsl:value-of select="@cod"/></td>
                <td><xsl:value-of select="nombreCompleto"/></td>
                <td><xsl:value-of select="nacimiento"/></td>
                <td>
                  <xsl:choose>
                    <xsl:when test="fallecimiento">
                      <xsl:value-of select="fallecimiento"/>
                    </xsl:when>
                    <xsl:otherwise>Desconocido</xsl:otherwise>
                  </xsl:choose>
                </td>
                <td><xsl:value-of select="pais"/></td>
                <td>
                  <a href="{fichaCompleta}" target="_blank">Saber más</a>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <p>
          Número total de artistas nacidos después de 1500: 
          <xsl:value-of select="count(artistas/artista[nacimiento &gt; 1500])"/>
        </p>

        <p>
          Número de artistas nacidos en España: 
          <xsl:value-of select="count(artistas/artista[nacimiento &gt; 1500 and pais='España'])"/>
        </p>

        <p>
          Número de artistas nacidos en el siglo XVI: 
          <xsl:value-of select="count(artistas/artista[nacimiento &gt;= 1501 and nacimiento &lt;= 1600])"/>
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
