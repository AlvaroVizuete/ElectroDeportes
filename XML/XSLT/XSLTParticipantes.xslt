<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<html>
  <head>
  <title>Participantes Esports</title>
  <style>
            .tabla{margin: auto;color:white;
            background-image: url(../Imagenes/Banneresports.svg);
            background-repeat: no-repeat;
            background-size: cover;
            text-align:center;}
            tr{font-size: 20px;}
            td{font-size: 30px;}
            
            .titulo{text-align: center;font-size: 30px;color:white;}
            
            body{background-image: url(../Imagenes/BannerFondo.svg);
            background-repeat: no-repeat;
            background-size: cover;
            }
  </style>
 </head>
  <body>
  <main>
    <h2 class="titulo">Participantes Esports</h2>
    <table border="2" class="tabla">
        <tr>
            <th>Nombre</th> 
            <th>Apellido</th> 
            <th>Liga</th> 
            <th>Categoria</th> 
        </tr>
        <xsl:for-each select="participantesesports/participante">
           <tr>
           <td>
             <xsl:value-of select="nombre"/>
              </td>
              <td>
                    <xsl:value-of select="apellidos"/>
                </td>
                  <td>
                <xsl:value-of select="liga"/>
                </td>
                <td>
                    <xsl:value-of select="categoria"/>
                </td>
            </tr>
                    </xsl:for-each>
                </table>
            </main>
        </body>
        </html>
	</xsl:template>
</xsl:stylesheet>
