<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<html>

		<head>
			<title>Clasificaciones Esports</title>
			<style>
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
					font-size: 30px;
				}

				.titulo {
					text-align: center;
					font-size: 50px;
					color: white;
				}
				.titulo2{text-align: center;
					font-size: 40px;
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
				<header>
					<h2 class="titulo">Clasificación Esports</h2>
				</header>

				<nav>
					<a href="XmlEventos.xml" class="navegadores">Torneos</a>
					<a href="XmlParticipantes.xml" class="navegadores">Participantes</a>
					<a href="../index.html" class="navegadores">Página Principal</a>
					<a href="XMLPremios.xml" class="navegadores">Premios</a>
				</nav>
				<h2 class="titulo2">Comprueba Aqui La Clasificación De Tus Equipos Favoritos</h2>
				<table border="2" class="tabla">
					<tr>
						<th>Puesto Clasificación</th>
						<th>Nombre</th>
						<th>Participantes</th>
						<th>Juego</th>
					</tr>
					<xsl:for-each select="clasificacion/equipo">
						<tr>
							<td>
								<xsl:value-of select="puestoclasi" />
							</td>
							<td>
								<xsl:value-of select="nombre" />
							</td>
							<td>
								<xsl:value-of select="numparticipantes" />
							</td>
							<td>
								<xsl:value-of select="juego" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</main>
		</body>

		</html>
	</xsl:template>
</xsl:stylesheet>
