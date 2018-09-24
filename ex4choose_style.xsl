<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
body
{
font-family : "Arial, Times New Roman, Serif";
font-size : 16px;
}
table,th,td
{
border: 4px solid black;
}
td,th
{
padding: 10px;
}
th
{
padding-top: 14px;
padding-bottom: 14px;
}
</style>
</head>
<body>
<table border="2 solid black">
<tr bgcolor= "orange">
<th>Book-ID</th>
<th>Title</th>
<th>Author</th>
<th>Publication</th>
<th>Price</th>
</tr>
<xsl:for-each select="class/Book">
<tr>
 <xsl:choose>
<xsl:when test="Title ='Linear Algebra'">
<xsl:attribute name="style">background-color: skyblue</xsl:attribute>
<td><xsl:value-of select="Book_ID"/></td>
<td><xsl:value-of select="Title"/></td>
<td><xsl:value-of select="Author"/></td>
<td><xsl:value-of select="Publication"/></td>
<td>   <xsl:value-of select="Price"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="Book_ID"/></td>
<td><xsl:value-of select="Title"/></td>
<td><xsl:value-of select="Author"/></td>
<td><xsl:value-of select="Publication"/></td>
<td><xsl:value-of select="Price"/></td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

