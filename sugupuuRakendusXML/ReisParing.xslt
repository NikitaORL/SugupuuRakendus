<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">

		<table border="1">
			<tr>
				<th>Nimetus</th>

				<th>Riik</th>

				<th>Pikkus</th>

				<th>Reisihind</th>

				<th>Transport</th>
			</tr>

			
				
				<xsl:for-each select="reisid/reis/suund">
					<xsl:sort select="Pikkus" order="descending"/>
					<tr>
					<td>
						<xsl:value-of select="Nimetus"/>
					</td>

					<td>
						<xsl:value-of select="Riik"/>
					</td>

					<td>
						<xsl:value-of select="Pikkus"/>
					</td>

					<td>
						<xsl:value-of select="reisihind"/>
					</td>

					<td>
						<xsl:value-of select="transport"/>
					</td>
					</tr>
				</xsl:for-each>
		</table>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<strong>Kõik suunad: </strong>
		<br></br>
		<h1>
			<xsl:for-each select="reisid/reis/suund">
				<xsl:value-of select="Riik"/>,
			</xsl:for-each>
		</h1>

		<ul>
			<xsl:for-each select="reisid/reis/suund">
				<li>
					<xsl:attribute name="style">background-color: yellow;</xsl:attribute>
					<xsl:value-of select="concat(Riik, ', ', Pikkus, ' päeva, ', Nimetus)"/>
				</li>

			</xsl:for-each>
		</ul>

		<ul>
		<xsl:for-each select="reisid/reis/suund">
			<li>
				<xsl:value-of select="concat(Nimetus, ',  ', Pikkus, '  Päeva')"/>
				<xsl:if test="Pikkus > 7">
					<strong> - Pikk reis</strong>
					
				</xsl:if>
			</li>
		</xsl:for-each>
		</ul>



		<strong>Kogumaksumus</strong>
	<xsl:value-of select ="sum(reisid/reis/suund/reisihind)"/> Eurot
	<br></br>


		<ul>
			<strong>Transport </strong>
	<xsl:for-each select ="reisid/reis/suund">
		<xsl:if test ="transport = 'lennureis'">
			<li>
			<xsl:value-of select="concat(Nimetus, ',  ', Riik, ',  ', 'Transport: ',transport)"/>
			</li>
		</xsl:if>
	</xsl:for-each>
		</ul>

		<ul>
		<strong>Sorteeri reisid kestvuse järgi</strong>
		<xsl:for-each select="reisid/reis/suund">
			<xsl:sort select="Pikkus" order="descending"/>
			<li>
			<xsl:value-of select ="concat(Nimetus, ', ', Riik, ', ', 'Pikkus: ', Pikkus, '  ')"/>
			</li>
		</xsl:for-each>
		</ul>

	</xsl:template>
</xsl:stylesheet>
