<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    <xsl:output method="text"/>

    <xsl:template match="thuvien" mode="#default">
        {
            "thuvien": {
                "Sach": [
                    <xsl:apply-templates select="Sach"/>
                ],
                "TheDocGia": {
                    
                }
            }
        }
    </xsl:template>

    <xsl:template match="Sach" mode="#default">
        {
            "MaSach": <xsl:value-of select="MaSach"/>
            "TenSach": <xsl:value-of select="TenSach"/>
            "TacGia": <xsl:value-of select="TacGia"/>
            "TheLoai": <xsl:value-of select="TheLoai"/>
            "NXB": <xsl:value-of select="NXB"/>
            "SoLuong": <xsl:value-of select="SoLuong"/>

        }<xsl:if test="position()!=last()">
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="TheDocGia" mode="#default">
        {
            "MaDocGia": <xsl:value-of select="MaDocGia"/>
            "TenDocGia": <xsl:value-of select="TenDocGia"/>
            "NgaySing": <xsl:value-of select="NgaySinh"/>
            "GioiTinh": <xsl:value-of select="GioiTinh"/>
            "DiaChi": <xsl:value-of select="DiaChi"/>
            "SDT": <xsl:value-of select="SDT"/>
            "NgayLapThe": <xsl:value-of select="NgayLapThe"/>
            "NgayHetHan": <xsl:value-of select="NgayHetHan"/>
            "PhieuMuon": 
        }<xsl:if test="position()!=last">
            
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>