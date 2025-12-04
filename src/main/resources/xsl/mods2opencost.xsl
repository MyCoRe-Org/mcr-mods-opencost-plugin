<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:opencost="http://www.opencost.de">

  <xsl:template match="/mycoreobject">

   <!-- ToDo: add content from publication mods, some content is hard coded atm -->
   <opencost:data xmlns:opencost="https://opencost.de" xmlns:datacite="https://schema.datacite.org/meta/kernel-4/metadata.xsd">
      <opencost:publication>
        <opencost:institution>
          <opencost:name>
            <opencost:type>short</opencost:type>
            <opencost:value>MyCoRe Test</opencost:value>
          </opencost:name>
          <opencost:id>
            <opencost:type>ror</opencost:type>
            <opencost:value>https://ror.org/...</opencost:value>
          </opencost:id>
        </opencost:institution>
        <opencost:primary_identifier>
          <opencost:doi>10....</opencost:doi>
        </opencost:primary_identifier>
          <opencost:secondary_identifiers>
            <opencost:id>
              <opencost:type>local</opencost:type>
              <opencost:value>http://localhost:8291/mir/receive/mir_mods_00000001</opencost:value>
            </opencost:id>
        </opencost:secondary_identifiers>

        <xsl:copy-of select="//mods:mods/mods:extension[@type='openCost']/*" />

        <opencost:publication_type>journal article</opencost:publication_type>
      </opencost:publication>
    </opencost:data>


  </xsl:template>
</xsl:stylesheet>