<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>Skladové zásoby</title>
            </head>
            <body>
                <h1>Hardware ve skladu</h1>
                <p><strong>Počet procesorů na výběr:</strong> <xsl:value-of select="count(/sklad/procesor/typ)"/></p>
                <h2>Procesory s cenou nad 8 500,- Kč</h2>
                <table style="width:100%;" border="1">
                    <tr bgcolor="#ffd500">
                        <th>Výrobce</th>
                        <th>Typ</th>
                        <th>Frekvence</th>
                        <th>Jádra</th>
                        <th>Otevřený násobič</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/procesor">
                        <xsl:if test= "cena > 8500">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="typ"/></td>
                            <td><xsl:value-of select="frekvence"/></td>
                            <td><xsl:value-of select="jadra"/></td>
                            <td><xsl:value-of select="otevreny_nasobic"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <h2>Grafické karty - Seřazeno dle ceny</h2>

                <table style="width:100%;" border="1">
                    <tr bgcolor="white"  style="color:#540000">
                        <th>Výrobce</th>
                        <th>Model</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/graficka_karta">
                        <xsl:sort select="cena"/>
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="model"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3>Levnější procesor než 5000,- Kč zabarven</h3>
                <p>Využito metody Choose - when - otherwise</p>
                <table width="100%;" border="1">
                    <tr bgcolor="#540000" style="color:white">
                        <th>Výrobce</th>
                        <th>Typ</th>
                    </tr>
                    <xsl:for-each select="/sklad/procesor">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <xsl:choose>
                                <xsl:when test="cena &gt; 5000">
                                    <td>
                                        <xsl:value-of select="typ"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="#ffd500">
                                        <xsl:value-of select="typ"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



