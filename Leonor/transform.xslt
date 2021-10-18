<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei">

    <xsl:strip-space elements="*"/>
    <xsl:template match="comment() | processing-instruction()"/>
 <!--   <xsl:template match="/tei:TEI">
        <xsl:apply-templates/>
    </xsl:template>-->

    <xsl:output method="html"/>


    <xsl:template match="tei:TEI">
        <xsl:element name="html">
            <!-- metadonnees simples. -->
            <xsl:element name="head">
                <xsl:element name="title">
                    <xsl:value-of select="normalize-space(//tei:titleStmt/tei:title[1])"/>
                </xsl:element>
                <link rel="stylesheet" href="https://dh-miami.github.io/assets/css/style.scss"/>
                <link rel="stylesheet" href="https://dh-miami.github.io/css/main.css"/>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </xsl:element>

            <!-- le corps de la page -->
            <body>
                
                <div id="metadatos">
                    <span><b>Metadatos: </b>
                        <xsl:value-of select="/tei:TEI/tei:teiHeader"/></span>
                    <br/>
                    <span>
                        <b>Online Source: </b>
                        <xsl:value-of
                            select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@type = 'digital']/tei:publisher"
                        /> (<xsl:value-of
                            select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@type = 'digital']/tei:date"
                        />), <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of
                                    select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@type = 'digital']/tei:ref"
                                />
                            </xsl:attribute>
                            <xsl:value-of
                                select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@type = 'digital']/tei:ref"
                            />
                        </xsl:element>
                    </span>
                    
                </div>

    
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>

    <xsl:template match="tei:placeName">
        <span class="placeName" title="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="tei:persName" priority="99">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@key"/>
            </xsl:attribute>                 
            <xsl:attribute name="title">Enlace a la Wikipedia</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <span class="placeName" title="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="tei:name">
        <span class="name">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

</xsl:stylesheet>
