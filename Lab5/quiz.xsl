<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
<h1 style="font-weight:bold;font-family:Arial;font-size:24pt;color:teal;text-align: center;">QUIZ!!</h1>
<xsl:for-each select="quiz/question">
  <div style="background-color:teal;color:white;padding:4px">
    <span style="font-weight:bold"><xsl:value-of select="number"/> - </span>
    <xsl:value-of select="ques"/>
    </div>
  <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
    <input type="radio" name="radio1" value="Y" >
    <xsl:if test="root/radiobuttons/radio1='Y'">
    <xsl:attribute name="checked">checked</xsl:attribute></xsl:if>
    </input><xsl:value-of select="option1"/><br/>

    <input type="radio" name="radio1" value="N" >
    <xsl:if test="root/radiobuttons/radio1='N'">
    <xsl:attribute name="checked">checked</xsl:attribute></xsl:if>
    </input><xsl:value-of select="option2"/><br/>

    <input type="radio" name="radio1" value="N" >
    <xsl:if test="root/radiobuttons/radio1='N'">
    <xsl:attribute name="checked">checked</xsl:attribute></xsl:if>
    </input><xsl:value-of select="option3"/><br/>

    <input type="radio" name="radio1" value="N" >
    <xsl:if test="root/radiobuttons/radio1='N'">
    <xsl:attribute name="checked">checked</xsl:attribute></xsl:if>
    </input><xsl:value-of select="option4"/><br/>
  </div>
</xsl:for-each>
</body>
</html>