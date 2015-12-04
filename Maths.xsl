<?xml version="1.0" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"	version="1.0">
	<xsl:template match="*">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="text()">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="/">
		<html>
			<head>
				<title>Subject page </title>
			</head>
			<body>
				<!--1. All Subject titles-->
				<h2>Subject title:</h2>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']"/>
				
				<!--2. educational links-->
				<h2>Examination Papers:</h2>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../paper/paper1"/>
				<h4></h4>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../paper/paper2"/>
				
				<!--3. All Study Resources-->
				<h2>Study information :</h2>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../resource/resource1"/>
				<h4></h4>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../resource/resource2"/>
				
				<!--4. All exam info-->
				<h2>FAQ</h2>
				<h3>How many papers are there?</h3>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../exam/description"/>
				<h3>What are the dates of the exams?</h3>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../exam/date"/>
				<h3>What time do the exams start at?</h3>
				<xsl:apply-templates select="/Database/subject/title[text()='Maths']/../exam/time"/>
				
				<!--
				<h2>Books published after 2001:</h2>
				<xsl:apply-templates select="/catalog/book/publish/publish_date[text()>'2001']"/>
				
				
				<h2>Books starting with the letter C:</h2>
				<xsl:apply-templates select="/catalog/book/price[text()>'30']"/>-->
			</body>
		</html>
	</xsl:template>
	
	<!--1. All subject titles-->
	<xsl:template match="title">
		<xsl:value-of select="."/>
	</xsl:template>
	<!--2. All educational links-->
	<xsl:template match="paper1">
		<a href="https://www.examinations.ie/tmp/1449235478_9149422.pdf">
		<xsl:value-of select="."/>
		</a>
	</xsl:template>
	
	<xsl:template match="paper2">
		<a href="https://www.examinations.ie/tmp/1449235478_9149422.pdf">
		<xsl:value-of select="."/>
		</a>
	</xsl:template>
	
	<!--3. All study info-->
	
	<xsl:template match="resource1">
		<a href="http://www.steps.ie/maths.aspx">
		<xsl:value-of select="."/>
		</a>
	</xsl:template>
	
	<xsl:template match="resource2">
		<a href="http://www.studynotes.ie/leaving-cert/mathematics/">
		<xsl:value-of select="."/>
		</a>
	</xsl:template>
	
	<!--4. All exam info-->
	<xsl:template match="description">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="date">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="time">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<!--
	<xsl:template match="publish_date">
		<xsl:value-of select="../../title"/>
	</xsl:template>
		
	
	<xsl:template match="price">
		<xsl:value-of select="../title"/>,
		<xsl:value-of select="../price"/>.
	</xsl:template>-->
	
</xsl:transform>