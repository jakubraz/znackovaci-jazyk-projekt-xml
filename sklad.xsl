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
                <p><xsl:value-of select="count(/sklad/vyrobce)"/></p>
                <h2>Procesor</h2>
                <table style="width:100%;" border="1">
                    <tr>
                        <th>Výrobce</th>
                        <th>Typ</th>
                        <th>Frekvence</th>
                        <th>Jádra</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/procesor">
                        <xsl:if test= "cena > 8500">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="typ"/></td>
                            <td><xsl:value-of select="frekvence"/></td>
                            <td><xsl:value-of select="jadra"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <h2>Operační paměť</h2>
                <p>Výrobci operačních pamětí: <xsl:value-of select="count(/sklad/operacni_pamet)"/></p>

                <table style="width:100%;" border="1">
                    <tr>
                        <th>Výrobce</th>
                        <th>Model</th>
                        <th>Kapacita</th>
                        <th>Frekvence</th>
                        <th>Časování</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/operacni_pamet">
                            <tr>
                                <td><xsl:value-of select="vyrobce"/></td>
                                <td><xsl:value-of select="model"/></td>
                                <td><xsl:value-of select="kapacita"/></td>
                                <td><xsl:value-of select="frekvence"/></td>
                                <td><xsl:value-of select="casovani"/></td>
                                <td><xsl:value-of select="cena"/></td>
                            </tr>
                    </xsl:for-each>
                </table>
                <h2>Grafická karta</h2>
                <p>Výrobci grafických karet: <xsl:value-of select="count(/sklad/graficka_karta)"/></p>

                <table style="width:100%;" border="1">
                    <tr>
                        <th>Výrobce</th>
                        <th>Řada</th>
                        <th>Model</th>
                        <th>Odběr (W)</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/graficka_karta">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="rada"/></td>
                            <td><xsl:value-of select="model"/></td>
                            <td><xsl:value-of select="odber"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Základní deska</h2>
                <p>Výrobci základních desek: <xsl:value-of select="count(/sklad/zakladni_deska)"/></p>

                <table style="width:100%;" border="1">
                    <tr>
                        <th>Výrobce</th>
                        <th>Model</th>
                        <th>Rozměr</th>
                        <th>Počet M2 slotů</th>
                        <th>PCI-E16</th>
                        <th>Podsvícení</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/zakladni_deska">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="model"/></td>
                            <td><xsl:value-of select="rozmer"/></td>
                            <td><xsl:value-of select="pocetM2"/></td>
                            <td><xsl:value-of select="pocet_PCI-E16"/></td>
                            <td><xsl:value-of select="podsviceni"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Zdroj</h2>
                <p>Výrobci zdrojů: <xsl:value-of select="count(/sklad/zdroj)"/></p>

                <table style="width:100%;" border="1">
                    <tr>
                        <th>Výrobce</th>
                        <th>Model</th>
                        <th>Výkon</th>
                        <th>Modulární</th>
                        <th>Certifikace</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/sklad/zdroj">
                        <tr>
                            <td><xsl:value-of select="vyrobce"/></td>
                            <td><xsl:value-of select="model"/></td>
                            <td><xsl:value-of select="vykon"/></td>
                            <td><xsl:value-of select="modularni"/></td>
                            <td><xsl:value-of select="certifikace"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



