<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:css="http://namespaces.plone.org/diazo/css" xmlns:dv="http://namespaces.plone.org/diazo" xmlns:dyn="http://exslt.org/dynamic" xmlns:esi="http://www.edge-delivery.org/esi/1.0" xmlns:exsl="http://exslt.org/common" xmlns:str="http://exslt.org/strings" xmlns:xhtml="http://www.w3.org/1999/xhtml" version="1.0" exclude-result-prefixes="exsl str css dv dyn xhtml esi">

<xsl:param name="path"/>


    <xsl:variable name="normalized_path"><xsl:value-of select="$path"/><xsl:if test="substring($path, string-length($path)) != '/'">/</xsl:if></xsl:variable>

    <xsl:output method="xml" indent="no" omit-xml-declaration="yes" media-type="text/html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="text()">
        <!-- Filter out quoted &#13; -->
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')"/>
    </xsl:template>

    <xsl:template match="style/text()|script/text()">
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')" disable-output-escaping="yes"/>
    </xsl:template>

    <xsl:template match="/html/@xmlns">
        <!-- Filter out -->
    </xsl:template>


    <xsl:template match="/"><xsl:choose>
<xsl:when test="contains($normalized_path, '/editor.php/')"><xsl:apply-templates select="@*|node()"/></xsl:when>

<xsl:when test="contains($normalized_path, '/preview.php/')"><xsl:apply-templates select="@*|node()"/></xsl:when>

<xsl:when test="contains($normalized_path, '/wizardlistener.php/')"><xsl:apply-templates select="@*|node()"/></xsl:when>

<xsl:when test="contains($normalized_path, '/binary_download.php/')"><xsl:apply-templates select="@*|node()"/></xsl:when>

<xsl:otherwise><xsl:apply-templates select="." mode="r1"/></xsl:otherwise>
</xsl:choose></xsl:template>

    <!--THEME r1: theme/theme.html-->
    <xsl:template match="/" mode="r1"><html lang="de"><head><meta http-equiv="content-type" content="text/html; charset=us-ascii"/><title><xsl:apply-templates select="/html/head/title/node()"/></title><meta name="description" content=""/><link rel="shortcut icon" href="http://www.uni-muenchen.de/favicon.ico" type="image/x-icon"/><link type="text/css" rel="stylesheet" href="http://www.uni-muenchen.de/_assets/css/screen.css" media="screen,print" title="lmustyle"/><link type="text/css" rel="stylesheet" href="http://www.uni-muenchen.de/_assets/css/print.css" media="print" title="lmustyle"/><xsl:apply-templates select="/html/head/link"/><xsl:comment>[if IE 6]&gt;
&lt;link type="text/css" rel="stylesheet" href="http://www.uni-muenchen.de/_assets/css/screen-ie6.css" media="screen" title="lmustyle"&gt;
&lt;![endif]</xsl:comment><xsl:comment>  &lt;link rel="stylesheet" href="css/plone.css" type="text/css" &gt;
  &lt;link rel="stylesheet" href="css/plone_base.css" type="text/css" &gt; 
  </xsl:comment><link rel="stylesheet" href="css/base.css" type="text/css"/><xsl:apply-templates select="/html/head/script"/></head><body id="top">
  <div id="page" class="page page-startseite page-118269"><xsl:text>
    </xsl:text><div id="home" class="home kopfbild"><xsl:text>
      </xsl:text><a id="lmu-logo" href="http://www.uni-muenchen.de/index.html" title="LMU - Ludwig-Maximilians-Universit&#xE4;t M&#xFC;nchen">LMU - Ludwig-Maximilians-Universität München</a><xsl:text>
      </xsl:text><a id="dep-logo">Departments Title</a><xsl:text>
    </xsl:text></div><xsl:text>

    </xsl:text><hr class="g-hidden"/><div id="bar" class="mod-bar kopfbild"><xsl:text>
      </xsl:text><div id="search" class="m-block m-block-search"><xsl:text>
        </xsl:text><h6 class="g-area-heading area-heading">Suche</h6><xsl:text>

        </xsl:text><form action="http://www.uni-muenchen.de/funktionen/suche/index.html" id="cref_iframe"><xsl:text>
          </xsl:text><input type="hidden" name="cref" value="http://www.uni-muenchen.de/funktionen/suche/cse_config_all.xml"/><input type="hidden" name="cof" value="FORID:11"/><fieldset class="m-search-wrapper"><input type="text" name="q" value="Suche" class="m-search-term" onclick="this.value=''"/><input value="Suchen" type="submit" name="sa" alt="Suche starten" title="Suche starten" class="m-search-button"/></fieldset></form><xsl:text>
      </xsl:text></div><xsl:text>

      </xsl:text><div id="fn" class="m-block m-block-fn"><xsl:text>
        </xsl:text><h6 class="g-area-heading area-heading">Links und
        Funktionen</h6><xsl:text>

        </xsl:text><ul class="m-list"><li class="m-item m-first"><a href="http://www.uni-muenchen.de" class="m-link" target="_blank" title="www.lmu.de - Startseite">www.lmu.de</a></li><xsl:text>

          </xsl:text><li class="m-item"><a href="http://www.portal.uni-muenchen.de" target="_blank" class="m-link" title="LMU-Portal">LMU-Portal</a></li><xsl:text>

          

          
        </xsl:text></ul><div class="g-clear"/><xsl:text>
      </xsl:text></div><xsl:text>

      

      </xsl:text><div class="g-clear"/><xsl:text>
    </xsl:text></div><xsl:text>
    </xsl:text><hr class="g-hidden"/><div id="bc" class="mod-bc kopfbild"><xsl:text>
      </xsl:text><h6 class="g-area-heading area-heading">Navigationspfad</h6><xsl:text>
      </xsl:text><div class="g-clear"/><xsl:text>
    </xsl:text></div><xsl:text>
    </xsl:text><hr class="g-hidden"/><div id="main" class="main"><xsl:apply-templates select="/html/body/node()"/></div><xsl:text>
    </xsl:text><hr class="g-hidden"/><div id="footer" class="mod-footer"><xsl:apply-templates select="//*[@id = 'copyright']/node()" mode="raw"/><xsl:text>
      </xsl:text><h6 class="g-area-heading area-heading">Fußzeile</h6><xsl:text>

      </xsl:text><ul class="m-list"><li class="m-item"><a href="http://www.uni-muenchen.de/funktionen/impressum/index.html" class="m-link" title="Impressum" id="imprint">Impressum</a></li><xsl:text>

        </xsl:text><li class="m-item"><a href="http://www.uni-muenchen.de/funktionen/datenschutz/index.html" class="m-link" title="Datenschutz">Datenschutz</a></li><xsl:text>

        </xsl:text><li class="m-item"><a href="http://www.uni-muenchen.de/funktionen/kontakt/index.html" class="m-link" title="Kontakt" id="contact">Kontakt</a></li><xsl:text>
      </xsl:text></ul><div class="g-clear"/><xsl:text>
    </xsl:text></div><xsl:text>
  </xsl:text></div>
</body></html>
</xsl:template>

    <!--RULE: <diazo:drop css:content-children="#copyright" xml:id="r13" content-children="//*[@id = 'copyright']" content="//*[@id = 'copyright']/node()"/>-->
    <xsl:template match="//*[@id = 'copyright']/node()">
    </xsl:template>

    <!--RULE: <diazo:drop css:content="#votumhead" xml:id="r14" content="//*[@id = 'votumhead']"/>-->
    <xsl:template match="//*[@id = 'votumhead']">
    </xsl:template>

    <!--RULE: <diazo:drop css:content="#surveyheaderTopBg" xml:id="r15" content="//*[@id = 'surveyheaderTopBg']"/>-->
    <xsl:template match="//*[@id = 'surveyheaderTopBg']">
    </xsl:template>

    <!--RULE: <diazo:drop css:content="#surveyheaderBottomBg" xml:id="r16" content="//*[@id = 'surveyheaderBottomBg']"/>-->
    <xsl:template match="//*[@id = 'surveyheaderBottomBg']">
    </xsl:template>

    <!--RULE: <diazo:drop css:content="#loginhead" xml:id="r17" content="//*[@id = 'loginhead']"/>-->
    <xsl:template match="//*[@id = 'loginhead']">
    </xsl:template>

    <!--RULE: <diazo:drop css:content="#adminheadstart a" xml:id="r18" content="//*[@id = 'adminheadstart']//a"/>-->
    <xsl:template match="//*[@id = 'adminheadstart']//a">
    </xsl:template>

    <!--RULE: <diazo:drop css:content=".subunitlogo" xml:id="r19" content="//*[@class and contains(concat(' ', normalize-space(@class), ' '), ' subunitlogo ')]"/>-->
    <xsl:template match="//*[@class and contains(concat(' ', normalize-space(@class), ' '), ' subunitlogo ')]">
    </xsl:template>

    <!--RULE: <diazo:drop css:content=".page-startseite #maindisplay fieldset" xml:id="r20" content="//*[@class and contains(concat(' ', normalize-space(@class), ' '), ' page-startseite ')]//*[@id = 'maindisplay']//fieldset"/>-->
    <xsl:template match="//*[@class and contains(concat(' ', normalize-space(@class), ' '), ' page-startseite ')]//*[@id = 'maindisplay']//fieldset">
    </xsl:template>

    <xsl:template mode="raw" match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates mode="raw" select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template mode="raw" match="text()">
        <!-- Filter out quoted &#13; -->
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')"/>
    </xsl:template>
    <xsl:template mode="raw" match="style/text()|script/text()">
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')" disable-output-escaping="yes"/>
    </xsl:template>
    <xsl:template mode="raw" match="/html/@xmlns">
        <!-- Filter out -->
    </xsl:template>
</xsl:stylesheet>

