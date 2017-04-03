<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/catalog">
    <html>
      <body>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Artist</th>
            <th>Year</th>
          </tr>
          <xsl:for-each select="cd">
            <xsl:sort select="year"/>
            <!-- <xsl:if test="year &gt; 1987"> -->
              <tr>
                <td><xsl:value-of select="title"/></td>
                <xsl:choose>
                  <xsl:when test="year &lt; 1987">
                    <td bgcolor="pink"><xsl:value-of select="artist"/></td>
                  </xsl:when>
                  <xsl:when test="year &gt; 1987">
                    <td bgcolor="yellow"><xsl:value-of select="artist"/></td>
                  </xsl:when>
                  <xsl:otherwise>
                    <td><xsl:value-of select="artist"/></td>
                  </xsl:otherwise>
                </xsl:choose>
                <td><xsl:value-of select="year"/></td>
              </tr>
            <!-- </xsl:if> -->
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
