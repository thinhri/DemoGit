
<?xsl version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    <xsl:output method="text"/>

    <xsl:template match="bookstore" mode="#default">
        {
            "bookstore": {
                "book": [
                    xsl:apply-templates select="book"/>
                ]
            }
        }
    </xsl:template>

    <xsl:template match="book" mode="#default">
        {
            "@category": "<xsl:value-of select="@category"/>",
            <xsl:if test="@cover">"@cover": "<xsl:value-of select="@cover"/>",
            </xsl:if>
            "title" :{
                "@lang": "<xsl:value-of select="title/lang"/>",
                "#text": "<xsl:value-of select="title"/>"
            },
            "author": 
            [<xsl:for-each select="author">
                "<xsl:value-of select="."/>"<xsl:if test="position() != last()">,
                    
                </xsl:if>
                
            </xsl:for-each>],
            "year": <xsl:value-of select="year"/>
            "price": <xsl:value-of select="price"/>
            
        }<xsl:if test="position() != last()">,
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
