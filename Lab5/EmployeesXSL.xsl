<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<Author>
<xsl:variable name="dOB" select="''"/>
<!-- The variable dOB can be used for further processing.  -->


<xsl:attribute name="DOB"><xsl:value-of select="$dOB"/></xsl:attribute>
<xsl:attribute name="EMailID"><xsl:value-of select="''"/></xsl:attribute>
<xsl:attribute name="SSN"><xsl:value-of select="''"/></xsl:attribute>
<Extn>
<xsl:value-of   select="''"/>
<xsl:variable name="externalSystemCode" select="''"/>
<!-- The variable externalSystemCode can be used for further processing.  -->


<xsl:attribute name="ExternalSystemCode"><xsl:value-of select="$externalSystemCode"/></xsl:attribute>
</Extn>
<Books>
<xsl:for-each select="/CATALOG/CD">
<Book>
<xsl:variable name="bookNo" select="'1'"/>
<!-- The variable bookNo can be used for further processing.  -->


<xsl:attribute name="BookNo"><xsl:value-of select="$bookNo"/></xsl:attribute>
<xsl:attribute name="Name"><xsl:value-of select="''"/></xsl:attribute>
<xsl:attribute name="PublisherCode"><xsl:value-of select="''"/></xsl:attribute>
<Price>
<xsl:value-of   select="./PRICE"/>
<xsl:variable name="listPrice" select="''"/>
<!-- The variable listPrice can be used for further processing.  -->


<xsl:attribute name="ListPrice"><xsl:value-of select="$listPrice"/></xsl:attribute>
</Price>
</Book>
</xsl:for-each>
</Books>
</Author>
</xsl:template>
</xsl:stylesheet>