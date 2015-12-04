<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="studentList">
   <html>
      <head>
      </head>
      <body>
        <div id="students">
            <table id="tableStudents">
               <tr>
                  <th>NAME</th>
                  <th>HOMETOWN</th>
                  <th>COLLEGE</th>
                  <th>DEPARTMENT</th>
                  <th>MAJOR</th>
               </tr>
               <xsl:for-each select="student">
                  <xsl:sort select="name/last"/>
                  <tr>
                     <td>
                        <xsl:value-of select="name/last"/> 
                        <xsl:value-of select="name/first"/>
                     </td>
                     <td>
                        <xsl:value-of select="location/city"/>
                        <xsl:value-of select="location/state"/>
                     </td>
                     <xsl:for-each select="college">
                        <td style="text-align:center;">
                           <xsl:value-of select="@name"/>
                        </td>
                        <td>
                           <xsl:value-of select="department/@name"/>
                        </td>
                           <td>
                              <xsl:value-of select="department/major"/>
                           </td>
                        
                     </xsl:for-each>
                  </tr>
               </xsl:for-each>
            </table>
            </div>              
      </body>
   </html>
</xsl:template>  
</xsl:stylesheet>
