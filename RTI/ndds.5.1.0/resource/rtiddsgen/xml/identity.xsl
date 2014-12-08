<?xml version="1.0"?>

<!--
(c) Copyright, Real-Time Innovations, Inc. 2003-2010.  All rights reserved.
-->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes"/>
	                 
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
