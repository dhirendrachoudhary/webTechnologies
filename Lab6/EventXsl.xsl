<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
  <xsl:template match="/">
      <html>
          <head>
              <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
              <link rel="stylesheet" href="tablecss.css" />
              <!-- <link rel="stylesheet" href="../css/style.css" /> -->
              <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia" />
          </head>
          <body>
              <center>
                  <h2>Table Events</h2>
                  <p>
                      Number of Events - <xsl:value-of select="count(root/event/event_id)" /><br/>
                  </p>
              <div class="scrolling">
                  <table class="table-props" id="table-title">
                      <tr id="table-heading">
                          <th>Event_ID</th>
                          <th>Event Name</th>
                          <th>Event Description</th>
                          <th>Participation type</th>
                          <th>Start date and time</th>
                          <th>End date and time</th>
                          <th>Organizer email</th>
                          <th>Organizer phone</th>
                      </tr>
                      <xsl:for-each select="root/event">
                      <xsl:sort select="number(event_id)" data-type="number" />
                          <tr>
                              <td>
                                  <xsl:value-of select="event_id" />
                              </td>
                              <td>
                                  <xsl:value-of select="event_name" />
                              </td>
                              <td>
                                  <xsl:value-of select="event_desc" />
                              </td>
                              <xsl:choose>
                                  <xsl:when test="event_type_participation = 'Team'">
                                      <td bgcolor="#f2f2f242">
                                          <xsl:value-of select="event_type_participation" />
                                      </td>
                                  </xsl:when>
                                  <xsl:otherwise>
                                      <td bgcolor="#cccccc">
                                          <xsl:value-of select="event_type_participation" />
                                      </td>
                                  </xsl:otherwise>
                              </xsl:choose>
                              <td>
                                  <xsl:value-of select="event_timing/event_start_datetime" />
                              </td>
                              <td>
                                  <xsl:value-of select="event_timing/event_end_datetime" />
                              </td>
                              <td>
                                  <xsl:value-of select="event_organizer_email" />
                              </td>
                              <td>
                                  <xsl:value-of select="event_organizer_phone" />
                              </td>
                          </tr>
                      </xsl:for-each>
                  </table>
              </div>
              </center>
          </body>
      </html>
  </xsl:template>
</xsl:stylesheet>