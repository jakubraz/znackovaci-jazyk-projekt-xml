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
                <table style="width:100%;" border="1">
                    <tr>
                        <th>Výrobce</th>
                        <th>Typ</th>
                        <th>Frekvence</th>
                        <th>Jádra</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/procesor">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="typ"/></td>
                            <td><xsl:value-of select="frekvence"/></td>
                            <td><xsl:value-of select="jadra"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



