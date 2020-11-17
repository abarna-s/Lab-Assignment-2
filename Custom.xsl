<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <u><h1 style="font-family:Courier New;color:Navy">ONLINE SHOPPING</h1></u>
    <h2 style="font-family:Courier New;color:ForestGreen">Choose and customize your things :-)</h2>
      <table border="1">
      <tr bgcolor="LightCoral">
        <th>NAME</th>
		<th>COLOUR</th>
		<th>NAME TO PRINT</th>
        <th>PRICE</th>
        <th>QUANTITY</th>
        <th>TOTAL AMOUNT</th>
      </tr>

      <xsl:for-each select="billing/items">
      <xsl:sort select="name"/>
      <tr bgcolor="MediumSpringGreen">
        <td><xsl:value-of select="name"/></td>
		<td><xsl:value-of select="color"/></td>
		<td><xsl:value-of select="toprint"/></td>
        <td><xsl:value-of select="price"/></td>
		<td><xsl:value-of select="quantity"/></td>
        <td><xsl:value-of select="Total"/></td>
      </tr>
      </xsl:for-each>

    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

