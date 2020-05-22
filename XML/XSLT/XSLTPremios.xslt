<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<html>

		<head>
			<title>Premios Esports</title>
			<style>
				.logotrofeo {
					width: 200px;
					height: 200px;
				}

				.tabla {
					margin: auto;
					color: white;
					background-image: url(../Imagenes/Banneresports.svg);
					background-repeat: no-repeat;
					background-size: cover;
					text-align: center;
				}

				tr {
					font-size: 20px;
				}

				td {
					font-size: 25px;
				}

				.titulo {
					text-align: center;
					font-size: 50px;
					color: white;
				}
				.titulo2 {text-align: center;
					font-size: 35px;
					color: white;}

				body {
					background-image: url(../Imagenes/BannerFondo.svg);
					background-repeat: no-repeat;
					background-size: cover;
					font-family: 'Chelsea Market', cursive;
				}

				nav {
					padding: 12px;
					background-image: url(../Imagenes/Bannerganadores.svg);
					margin-top: 1rem;
					margin-bottom: 1rem;
					text-align: center;

				}

				.navegadores {
					margin-left: 1rem;
					text-decoration: none;
					background-color: chartreuse;
					padding: 0.0625rem;
					border-radius: 0.5rem;
					margin: 3rem;
					border-style: solid;


				}

				a:hover {
					background-color: skyblue
				}

			</style>
		</head>

		<body>
			<main>
			<header><h1 class="titulo">CAMPEONATOS ESPORTS</h1></header>
				<nav>
					<a href="XmlEventos.xml" class="navegadores">Torneos</a>
					<a href="XmlParticipantes.xml" class="navegadores">Participantes</a>
					<a href="XmlClasificacion.xml" class="navegadores">Clasificación</a>
					<a href="../index.html" class="navegadores">Página Principal</a>
				</nav>
				<h2 class="titulo2">Consulte Aqui Los Premios</h2>
				<table border="2" class="tabla">
					<tr>
						<th>Nombre</th>
						<th>Descripción</th>
						<th>Material</th>
						<th>Premio Metalico</th>
						<th>Trofeo</th>
					</tr>
					<xsl:for-each select="PremiosEsports/Premio">
						<tr>
							<td>
								<xsl:value-of select="nombre" />
							</td>
							<td>
								<xsl:value-of select="descripcion" />
							</td>
							<td>
								<xsl:value-of select="material" />
							</td>
							<td>
								<xsl:value-of select="premio" />
							</td>
							<td><img class="logotrofeo">
								<xsl:attribute name="src">
									<xsl:value-of select="foto" />
								</xsl:attribute>
								</img>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</main>
		</body>

		</html>
	</xsl:template>
</xsl:stylesheet>
