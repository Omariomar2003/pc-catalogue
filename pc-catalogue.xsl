<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <!-- Template principal -->
    <xsl:template match="/catalogue">
        <html>
            <head>
                <title>Catalogue PC</title>
                <style>
                    body { font-family: Arial; background: #f4f4f4; padding: 20px; }
                    table { border-collapse: collapse; width: 100%; background: white; }
                    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
                    th { background-color: #333; color: white; }
                </style>
            </head>
            <body>
                <h1>Catalogue des pièces PC</h1>
                <table>
                    <tr>
                        <th>Nom</th>
                        <th>Catégorie</th>
                        <th>Prix (€)</th>
                        <th>Disponibilité</th>
                    </tr>
                    <xsl:apply-templates select="piece"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template pour chaque pièce -->
    <xsl:template match="piece">
        <tr>
            <td><xsl:value-of select="nom"/></td>
            <td><xsl:value-of select="categorie"/></td>
            <td><xsl:value-of select="prix"/></td>
            <td><xsl:value-of select="disponibilite"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
