<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <!-- Forked from: http://yoast.com/xsl-stylesheet-xml-sitemap/ -->
        <title>XML Sitemap</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://tablesorter.com/jquery.tablesorter.min.js"></script>
        <script type="text/javascript"><![CDATA[
					$(document).ready(function() {
				        $("#sitemap").tablesorter( { widgets: ['zebra'] } );
					});
				]]></script>
        <style type="text/css">
          body {
          font-family: Helvetica, Arial, sans-serif;
          font-size: 13px;
          color: #545353;
          }
          table {
          border: none;
          border-collapse: collapse;
          }
          #sitemap tr.odd {
          background-color: #eee;
          }
          #sitemap tbody tr:hover {
          background-color: #ccc;
          }
          #sitemap tbody tr:hover td, #sitemap tbody tr:hover td a {
          color: #000;
          }
          #content {
          margin: 0 auto;
          width: 1000px;
          }
          .expl {
          margin: 10px 3px;
          line-height: 1.3em;
          }
          .expl a {
          color: #da3114;
          font-weight: bold;
          }
          a {
          color: #000;
          text-decoration: none;
          }
          a:visited {
          color: #777;
          }
          a:hover {
          text-decoration: underline;
          }
          td {
          font-size:11px;
          }
          th {
          text-align:left;
          padding-right:30px;
          font-size:11px;
          }
          thead th {
          border-bottom: 1px solid #000;
          cursor: pointer;
          }
        </style>
      </head>
      <body>
        <div id="content">
          <h1>XML Sitemap</h1>
          <p class="expl">
            This sitemap contains
            <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
            URLs.
          </p>
          <table id="sitemap" cellpadding="3">
            <thead>
              <tr>
                <th width="75%">URL</th>
                <th width="5%">Priority</th>
                <th width="5%">Images</th>
                <th width="5%">Change Freq.</th>
                <th width="10%">Last Change</th>
              </tr>
            </thead>
            <tbody>
              <xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
              <xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td>
                    <xsl:variable name="itemURL">
                      <xsl:value-of select="sitemap:loc"/>
                    </xsl:variable>
                    <a href="{$itemURL}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td>
                    <xsl:value-of select="concat(sitemap:priority*100,'%')"/>
                  </td>
                  <td>
                    <xsl:value-of select="count(image:image)"/>
                  </td>
                  <td>
                    <xsl:value-of
                      select="concat(translate(substring(sitemap:changefreq, 1, 1),concat($lower, $upper),concat($upper, $lower)),substring(sitemap:changefreq, 2))"/>
                  </td>
                  <td>
                    <xsl:value-of
                      select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
