<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
  <xsl:template match="bsa">
    <html>
      <head>
        <title>
          Assign 08
        </title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>  
  <xsl:template match="council">  
    <html>
      <body>
        <span style="color: red"> Council: </span>
        <xsl:value-of select="@Cname"/> <br/>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="troop">
    <html>
      <body>
        <span style="color: red"> Troop: </span>
        <xsl:value-of select="@Tname"/> <br/>
        <span style="color: blue"> Number: </span>
        <xsl:value-of select="@number"/> <br/>
        <table border="1" style="border-color:#000000">
          <tr style="background-color: yellow">
            <th> First Name </th>
            <th> Last Name </th>
            <th> Phone </th>
            <th> Street </th>
            <th> City </th>
            <th> State </th>
            <th> Rank </th>
            <th> MeritBadge </th>
          </tr>
          <xsl:apply-templates/>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="scout">
    <html>
      <body>
        <tr style="background-color: blue">
          <td>
            <xsl:value-of select="first"/>
          </td>
          <td>
            <xsl:value-of select="last"/>
          </td>
          <td>
            <xsl:value-of select="phone"/>
          </td>
          <td>
            <xsl:value-of select="address/street"/>
          </td>
          <td>
            <xsl:value-of select="address/city"/>
          </td>
          <td>
            <xsl:value-of select="address/state"/>
          </td>
          <td>
            <select>
              <xsl:for-each select="rank">
                <option>
                  <xsl:value-of select="."/>
                  <xsl:value-of select="@Rdate"/>
                </option>
              </xsl:for-each>
            </select>
          </td>
          <td>
            <select>
              <xsl:for-each select="meritBadge">
                <option>
                  <xsl:value-of select="."/>
                  <xsl:value-of select="@Mdate"/>
                </option>
              </xsl:for-each>
            </select>
          </td>
        </tr>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
