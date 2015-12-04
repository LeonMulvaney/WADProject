<!--<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version = "2.0" >

<xsl:template match="*">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="text()">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="/">
<html>
	<head>
		<title>Exam Papers</title>
	</head>
	<body>
		<h2>2015 Maths Higher Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2015']/HIGHER/DLINK"/>
		<h2>2015 Maths Ordinary Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2015']/ORDINARY/DLINK"/>
		<h2>2014 Maths Higher Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2014']/HIGHER/DLINK"/>
		<h2>2014 Maths Ordinary Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2014']/ORDINARY/DLINK"/>
		<h2>2013 Maths Higher Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2013']/HIGHER/DLINK"/>
		<h2>2013 Maths Ordinary Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2013']/ORDINARY/DLINK"/>
		<h2>2012 Maths Higher Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2012']/HIGHER/DLINK"/>
		<h2>2012 Maths Ordinary Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2012']/ORDINARY/DLINK"/>
		<h2>2011 Maths Higher Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2011']/HIGHER/DLINK"/>
		<h2>2011 Maths Ordinary Paper</h2>
		<xsl:apply-templates select="//MATHS/EXAMPAPER/YEAR[@id='2011']/ORDINARY/DLINK"/>
		<h2>2015 Geography Higher Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2015']/HIGHER/DLINK"/>
		<h2>2015 Geography Ordinary Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2015']/ORDINARY/DLINK"/>
		<h2>2014 Geography Higher Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2014']/HIGHER/DLINK"/>
		<h2>2014 Geography Ordinary Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2014']/ORDINARY/DLINK"/>
		<h2>2013 Geography Higher Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2013']/HIGHER/DLINK"/>
		<h2>2013 Geography Ordinary Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2013']/ORDINARY/DLINK"/>
		<h2>2012 Geography Higher Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2012']/HIGHER/DLINK"/>
		<h2>2012 Geography Ordinary Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2012']/ORDINARY/DLINK"/>
		<h2>2011 Geography Higher Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2011']/HIGHER/DLINK"/>
		<h2>2011 Geography Ordinary Paper</h2>
		<xsl:apply-templates select="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2011']/ORDINARY/DLINK"/>
		<h2>2015 DCG Higher Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2015']/HIGHER/DLINK"/>
		<h2>2015 DCG Ordinary Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2015']/ORDINARY/DLINK"/>
		<h2>2014 DCG Higher Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2014']/HIGHER/DLINK"/>
		<h2>2014 DCG Ordinary Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2014']/ORDINARY/DLINK"/>
		<h2>2013 DCG Higher Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2013']/HIGHER/DLINK"/>
		<h2>2013 DCG Ordinary Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2013']/ORDINARY/DLINK"/>
		<h2>2012 DCG Higher Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2012']/HIGHER/DLINK"/>
		<h2>2012 DCG Ordinary Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2012']/ORDINARY/DLINK"/>
		<h2>2011 DCG Higher Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2011']/HIGHER/DLINK"/>
		<h2>2011 DCG Ordinary Paper</h2>
		<xsl:apply-templates select="//DCG/EXAMPAPER/YEAR[@id='2011']/ORDINARY/DLINK"/>

	</body>
</html>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2015']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2015']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2014']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2014']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2013']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2013']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2012']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2012']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2011']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//MATHS/EXAMPAPER/YEAR[@id='2011']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2015']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2015']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2014']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2014']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2013']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2013']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2012']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2012']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2011']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//GEOGRAPHY/EXAMPAPER/YEAR[@id='2011']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2015']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2015']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2014']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2014']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2013']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2013']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2012']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2012']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2011']/HIGHER/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="//DCG/EXAMPAPER/YEAR[@id='2011']/ORDINARY/DLINK">
	<xsl:value-of select="."/>
</xsl:template>
</transform>
--!>