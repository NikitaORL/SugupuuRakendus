<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:param name="otsing" select="'ll'"/>
	<xsl:param name="pikkus" select="7"/>
	
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>,
					<xsl:value-of select="@synd"/>:
					<xsl:value-of select="concat(nimi, ' sünniaasta: ', @synd)"/>
					. Vanus -
					<xsl:value-of select="2026-@synd"/> aastat vana
				</li>
			</xsl:for-each>
		</ul>
		<ol>
			<li>
				1. täht kõikidest nimedest:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="substring(nimi, 1, 1)"/>,
				</xsl:for-each>
			</li>
			<li>
				Näita nimed ja tähtede kogused:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi), ' tähte ')"/>,
				</xsl:for-each>
			</li>
		</ol>

		<strong>Näita kõik nimed mis algavad C-tähtega</strong>
		<xsl:for-each select="//inimene[starts-with(nimi, 'C')]">
			<xsl:value-of select="nimi"/>
			<br/>
		</xsl:for-each>

		<storng>Parameetrite kasutamine</storng>
		Otsime nimed mis sisaldavad pareemt ostsing=´ll´
		<xsl:value-of select="$otsing"/>
		<xsl:for-each select ="//inimene[contains(nimi, $otsing)]">
			<xsl:value-of select="nimi"/>,
		</xsl:for-each>

		Otsime nimed mis pikkusega =
		<xsl:value-of select="$pikkus"/> ja rohkem
		<br/>
		<xsl:for-each select="//inimene[string-length(nimi)>=$pikkus]">
			<xsl:value-of select="concat(nimi, ' pikkus:  ',   string-length(nimi))"/>
		</xsl:for-each>

		<strong>Kasutame if lause:</strong>
		Iga inimese kohta näitame mitmendal oma vanema sünnaastal ta sündis
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>
					<xsl:if test="../@synd">
						- vanema sünniaasta oli -
						<xsl:value-of select="../../@synd -@synd"/> aastat vana
					</xsl:if>
				</li>
			</xsl:for-each>
		</ul>
		



	</xsl:template>
</xsl:stylesheet>

		<!-- 
		<table border="1">
			<xsl:for-each select="//inimene">
				<tr>
					<th>Nimi</th>
					<td border ="1">
						<xsl:value-of select="nimi"/>
					</td>

					<td border ="1">
						<th>Aasta</th>
						<xsl:value-of select="@synd"/>
					</td>

					<td border ="1">
						<th>Vanus</th>
						<xsl:value-of select="2026 - @synd"/>
					</td>

					<td border ="1">
						<th>1 häht</th>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>

					<td border ="1">
						<th>viimane täht</th>
						<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
					</td>
				</tr>
			</xsl:for-each>
		
		</table>
		-->

		