<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="DW-06-12-L-D-650" urn="urn:adsk.wipprod:fs.file:vf.MJDyaau2SMmqD3twpezVDA">
<packages>
<package name="SAMTEC_DW-06-12-L-D-650" library_version="2">
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="3.81" width="0.1" layer="51"/>
<wire x1="-1.27" y1="3.81" x2="13.97" y2="3.81" width="0.1" layer="51"/>
<wire x1="13.97" y1="3.81" x2="13.97" y2="-1.27" width="0.1" layer="51"/>
<wire x1="13.97" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="3.81" width="0.1" layer="51"/>
<wire x1="-1.27" y1="3.81" x2="13.97" y2="3.81" width="0.1" layer="51"/>
<wire x1="13.97" y1="3.81" x2="13.97" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="3.81" width="0.2" layer="21"/>
<wire x1="13.97" y1="3.81" x2="13.97" y2="-1.27" width="0.2" layer="21"/>
<wire x1="13.97" y1="3.81" x2="-1.27" y2="3.81" width="0.2" layer="21"/>
<wire x1="13.97" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-1.52" y1="-1.52" x2="-1.52" y2="4.06" width="0.05" layer="39"/>
<wire x1="-1.52" y1="4.06" x2="14.22" y2="4.06" width="0.05" layer="39"/>
<wire x1="14.22" y1="4.06" x2="14.22" y2="-1.52" width="0.05" layer="39"/>
<wire x1="14.22" y1="-1.52" x2="-1.52" y2="-1.52" width="0.05" layer="39"/>
<text x="-2.27" y="5.06" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.27" y="-3.77" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-1.92" y="0" radius="0.1" width="0.2" layer="21"/>
<circle x="-1.92" y="0" radius="0.1" width="0.2" layer="51"/>
<pad name="01" x="0" y="0" drill="1.02" diameter="1.37" shape="square"/>
<pad name="02" x="0" y="2.54" drill="1.02" diameter="1.37"/>
<pad name="03" x="2.54" y="0" drill="1.02" diameter="1.37"/>
<pad name="04" x="2.54" y="2.54" drill="1.02" diameter="1.37"/>
<pad name="05" x="5.08" y="0" drill="1.02" diameter="1.37"/>
<pad name="06" x="5.08" y="2.54" drill="1.02" diameter="1.37"/>
<pad name="07" x="7.62" y="0" drill="1.02" diameter="1.37"/>
<pad name="08" x="7.62" y="2.54" drill="1.02" diameter="1.37"/>
<pad name="09" x="10.16" y="0" drill="1.02" diameter="1.37"/>
<pad name="10" x="10.16" y="2.54" drill="1.02" diameter="1.37"/>
<pad name="11" x="12.7" y="0" drill="1.02" diameter="1.37"/>
<pad name="12" x="12.7" y="2.54" drill="1.02" diameter="1.37"/>
</package>
</packages>
<symbols>
<symbol name="DW-06-12-L-D-650" library_version="2">
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<text x="-8.12" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="01" x="-12.7" y="7.62" length="middle" direction="pas"/>
<pin name="02" x="12.7" y="7.62" length="middle" direction="pas" rot="R180"/>
<pin name="03" x="-12.7" y="5.08" length="middle" direction="pas"/>
<pin name="04" x="12.7" y="5.08" length="middle" direction="pas" rot="R180"/>
<pin name="05" x="-12.7" y="2.54" length="middle" direction="pas"/>
<pin name="06" x="12.7" y="2.54" length="middle" direction="pas" rot="R180"/>
<pin name="07" x="-12.7" y="0" length="middle" direction="pas"/>
<pin name="08" x="12.7" y="0" length="middle" direction="pas" rot="R180"/>
<pin name="09" x="-12.7" y="-2.54" length="middle" direction="pas"/>
<pin name="10" x="12.7" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="-12.7" y="-5.08" length="middle" direction="pas"/>
<pin name="12" x="12.7" y="-5.08" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DW-06-12-L-D-650" prefix="J" library_version="2">
<gates>
<gate name="G$1" symbol="DW-06-12-L-D-650" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SAMTEC_DW-06-12-L-D-650">
<connects>
<connect gate="G$1" pin="01" pad="01"/>
<connect gate="G$1" pin="02" pad="02"/>
<connect gate="G$1" pin="03" pad="03"/>
<connect gate="G$1" pin="04" pad="04"/>
<connect gate="G$1" pin="05" pad="05"/>
<connect gate="G$1" pin="06" pad="06"/>
<connect gate="G$1" pin="07" pad="07"/>
<connect gate="G$1" pin="08" pad="08"/>
<connect gate="G$1" pin="09" pad="09"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Samtec"/>
<attribute name="PARTREV" value="R"/>
<attribute name="STANDARD" value="Manufacturer Recommendations"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CONBNC001" urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ">
<packages>
<package name="LINX_CONBNC001" library_version="2">
<circle x="0" y="0" radius="5.5" width="0.127" layer="51"/>
<text x="-4.6" y="6" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.6" y="-6" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<circle x="0" y="0" radius="5.9" width="0.05" layer="39"/>
<wire x1="-5.5" y1="0" x2="-4.68" y2="2.89" width="0.127" layer="21" curve="-32.3035"/>
<wire x1="5.5" y1="0" x2="4.68" y2="-2.89" width="0.127" layer="21" curve="-32.3035"/>
<wire x1="0" y1="5.5" x2="2.89" y2="4.68" width="0.127" layer="21" curve="-32.3035"/>
<wire x1="0" y1="-5.5" x2="-2.89" y2="-4.68" width="0.127" layer="21" curve="-32.3035"/>
<wire x1="-5.5" y1="0" x2="-4.68" y2="-2.89" width="0.127" layer="21" curve="31.6962"/>
<wire x1="5.5" y1="0" x2="4.68" y2="2.89" width="0.127" layer="21" curve="31.6962"/>
<wire x1="0" y1="5.5" x2="-2.89" y2="4.68" width="0.127" layer="21" curve="31.6962"/>
<wire x1="0" y1="-5.5" x2="2.89" y2="-4.68" width="0.127" layer="21" curve="31.6962"/>
<pad name="1" x="0" y="0" drill="1.2"/>
<pad name="S1" x="3.15" y="3.15" drill="1.6"/>
<pad name="S2" x="3.15" y="-3.15" drill="1.6"/>
<pad name="S3" x="-3.15" y="-3.15" drill="1.6"/>
<pad name="S4" x="-3.15" y="3.15" drill="1.6"/>
</package>
</packages>
<symbols>
<symbol name="CONBNC001" library_version="2">
<circle x="0" y="0" radius="1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="0" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-3.302" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<text x="-3.81" y="1.524" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.064" y="-6.858" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="0" y1="-3.302" x2="-0.762" y2="-3.302" width="0.254" layer="94"/>
<wire x1="0" y1="-3.302" x2="0.762" y2="-3.302" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-3.302" x2="-1.27" y2="-4.064" width="0.254" layer="94"/>
<wire x1="0" y1="-3.302" x2="-0.508" y2="-4.064" width="0.254" layer="94"/>
<wire x1="0.762" y1="-3.302" x2="0.254" y2="-4.064" width="0.254" layer="94"/>
<wire x1="-3.175" y1="-0.635" x2="-3.175" y2="0.635" width="0.254" layer="94" curve="180"/>
<wire x1="-3.175" y1="-3.175" x2="-3.175" y2="-1.905" width="0.254" layer="94" curve="180"/>
<pin name="1" x="2.54" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="2.54" y="-2.54" visible="off" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CONBNC001" prefix="J" library_version="2">
<description> &lt;a href="https://pricing.snapeda.com/parts/CONBNC001/Linx%20Technologies%20Inc./view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CONBNC001" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LINX_CONBNC001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="S1 S2 S3 S4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/CONBNC001/Linx/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value=" BNC Jack 50 Ohm PCB Through Hole "/>
<attribute name="MF" value="Linx Technologies Inc."/>
<attribute name="MP" value="CONBNC001"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://www.snapeda.com/api/url_track_click_mouser/?unipart_id=12122496&amp;manufacturer=Linx Technologies Inc.&amp;part_name=CONBNC001&amp;search_term=None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/CONBNC001/Linx/view-part/?ref=snap"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Pin Headers" urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig">
<packages>
<package name="CONN_PH1-03-UA_ADM" library_version="3">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.524" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.524"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.524"/>
<wire x1="5.08" y1="-1.016" x2="5.08" y2="-2.5146" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-2.5146" x2="5.08" y2="-2.7686" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.5146" width="0.1524" layer="48"/>
<wire x1="0" y1="-2.5146" x2="0" y2="-2.7686" width="0.1524" layer="48"/>
<wire x1="0" y1="-2.5146" x2="0.254" y2="-2.6416" width="0.1524" layer="48"/>
<wire x1="0.254" y1="-2.6416" x2="0.254" y2="-2.3876" width="0.1524" layer="48"/>
<wire x1="0.254" y1="-2.3876" x2="0" y2="-2.5146" width="0.1524" layer="48"/>
<wire x1="0" y1="-2.5146" x2="1.27" y2="-2.5146" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-2.5146" x2="4.826" y2="-2.6416" width="0.1524" layer="48"/>
<wire x1="4.826" y1="-2.6416" x2="4.826" y2="-2.3876" width="0.1524" layer="48"/>
<wire x1="4.826" y1="-2.3876" x2="5.08" y2="-2.5146" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-2.5146" x2="3.81" y2="-2.5146" width="0.1524" layer="48"/>
<wire x1="6.096" y1="0" x2="7.62" y2="0" width="0.1524" layer="48"/>
<wire x1="7.62" y1="0" x2="7.874" y2="0" width="0.1524" layer="48"/>
<wire x1="7.62" y1="0" x2="7.493" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="7.493" y1="-0.254" x2="7.747" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="7.747" y1="-0.254" x2="7.62" y2="0" width="0.1524" layer="48"/>
<wire x1="7.62" y1="0" x2="7.493" y2="0.254" width="0.1524" layer="48"/>
<wire x1="7.493" y1="0.254" x2="7.747" y2="0.254" width="0.1524" layer="48"/>
<wire x1="7.747" y1="0.254" x2="7.62" y2="0" width="0.1524" layer="48"/>
<wire x1="-1.397" y1="-1.3716" x2="6.477" y2="-1.3716" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-1.3716" x2="6.477" y2="1.3716" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.3716" x2="-1.397" y2="1.3716" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.3716" x2="-1.397" y2="-1.3716" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-2.0828" x2="-0.254" y2="-2.0828" width="0.508" layer="21" curve="-180"/>
<wire x1="-0.254" y1="-2.0828" x2="0.254" y2="-2.0828" width="0.508" layer="21" curve="-180"/>
<wire x1="-1.27" y1="-1.2446" x2="6.35" y2="-1.2446" width="0.1524" layer="51"/>
<wire x1="6.35" y1="-1.2446" x2="6.35" y2="1.2446" width="0.1524" layer="51"/>
<wire x1="6.35" y1="1.2446" x2="-1.27" y2="1.2446" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.2446" x2="-1.27" y2="-1.2446" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.8636" x2="-0.254" y2="-0.8636" width="0" layer="51" curve="-180"/>
<wire x1="-0.254" y1="-0.8636" x2="0.254" y2="-0.8636" width="0" layer="51" curve="-180"/>
</package>
</packages>
<symbols>
<symbol name="CONN_003P_000C_1" library_version="3">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9182" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="12.7" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="5.3086" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="4.8006" y="-3.5814" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PH1-03-UA" prefix="J" library_version="3">
<gates>
<gate name="A" symbol="CONN_003P_000C_1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN_PH1-03-UA_ADM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER_1" value="2057-PH1-03-UA-ND" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PH1-03-UA" constant="no"/>
<attribute name="MFR_NAME" value="ADAM TECHNOLOGIES INC" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="J1" library="DW-06-12-L-D-650" library_urn="urn:adsk.wipprod:fs.file:vf.MJDyaau2SMmqD3twpezVDA" deviceset="DW-06-12-L-D-650" device=""/>
<part name="J2" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J3" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J4" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J5" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J6" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J7" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J8" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J9" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J10" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J11" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J12" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J13" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J14" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J15" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J16" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J17" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J18" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J19" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J20" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J21" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J22" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J23" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J24" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J25" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J26" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J27" library="CONBNC001" library_urn="urn:adsk.wipprod:fs.file:vf.QUD-yjazTeOPcdCoS2IrRQ" deviceset="CONBNC001" device=""/>
<part name="J28" library="DW-06-12-L-D-650" library_urn="urn:adsk.wipprod:fs.file:vf.MJDyaau2SMmqD3twpezVDA" deviceset="DW-06-12-L-D-650" device=""/>
<part name="J29" library="DW-06-12-L-D-650" library_urn="urn:adsk.wipprod:fs.file:vf.MJDyaau2SMmqD3twpezVDA" deviceset="DW-06-12-L-D-650" device=""/>
<part name="J30" library="DW-06-12-L-D-650" library_urn="urn:adsk.wipprod:fs.file:vf.MJDyaau2SMmqD3twpezVDA" deviceset="DW-06-12-L-D-650" device=""/>
<part name="J31" library="DW-06-12-L-D-650" library_urn="urn:adsk.wipprod:fs.file:vf.MJDyaau2SMmqD3twpezVDA" deviceset="DW-06-12-L-D-650" device=""/>
<part name="J32" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J33" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J34" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J35" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J36" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J37" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J38" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J39" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J40" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J41" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J42" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J45" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J46" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J49" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J50" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J53" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J54" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
<part name="J56" library="Pin Headers" library_urn="urn:adsk.wipprod:fs.file:vf.r1sdonNoQI-l8vaiArBSig" deviceset="PH1-03-UA" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J1" gate="G$1" x="50.8" y="73.66" smashed="yes" rot="R90">
<attribute name="NAME" x="40.64" y="65.54" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="60.96" y="66.04" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="J2" gate="G$1" x="50.8" y="48.26" smashed="yes">
<attribute name="NAME" x="46.99" y="49.784" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="41.402" size="1.778" layer="96"/>
</instance>
<instance part="J3" gate="G$1" x="50.8" y="33.02" smashed="yes">
<attribute name="NAME" x="46.99" y="34.544" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="26.162" size="1.778" layer="96"/>
</instance>
<instance part="J4" gate="G$1" x="50.8" y="15.24" smashed="yes">
<attribute name="NAME" x="46.99" y="16.764" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="8.382" size="1.778" layer="96"/>
</instance>
<instance part="J5" gate="G$1" x="50.8" y="-2.54" smashed="yes">
<attribute name="NAME" x="46.99" y="-1.016" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="-9.398" size="1.778" layer="96"/>
</instance>
<instance part="J6" gate="G$1" x="50.8" y="-22.86" smashed="yes">
<attribute name="NAME" x="46.99" y="-21.336" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="-29.718" size="1.778" layer="96"/>
</instance>
<instance part="J7" gate="G$1" x="50.8" y="-45.72" smashed="yes">
<attribute name="NAME" x="46.99" y="-44.196" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="-52.578" size="1.778" layer="96"/>
</instance>
<instance part="J8" gate="G$1" x="50.8" y="-68.58" smashed="yes">
<attribute name="NAME" x="46.99" y="-67.056" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="-75.438" size="1.778" layer="96"/>
</instance>
<instance part="J9" gate="G$1" x="50.8" y="-91.44" smashed="yes">
<attribute name="NAME" x="46.99" y="-89.916" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="-98.298" size="1.778" layer="96"/>
</instance>
<instance part="J10" gate="G$1" x="50.8" y="-114.3" smashed="yes">
<attribute name="NAME" x="46.99" y="-112.776" size="1.778" layer="95"/>
<attribute name="VALUE" x="46.736" y="-121.158" size="1.778" layer="96"/>
</instance>
<instance part="J11" gate="G$1" x="48.26" y="-139.7" smashed="yes">
<attribute name="NAME" x="44.45" y="-138.176" size="1.778" layer="95"/>
<attribute name="VALUE" x="44.196" y="-146.558" size="1.778" layer="96"/>
</instance>
<instance part="J12" gate="G$1" x="81.28" y="48.26" smashed="yes">
<attribute name="NAME" x="77.47" y="49.784" size="1.778" layer="95"/>
<attribute name="VALUE" x="77.216" y="41.402" size="1.778" layer="96"/>
</instance>
<instance part="J13" gate="G$1" x="83.82" y="30.48" smashed="yes">
<attribute name="NAME" x="80.01" y="32.004" size="1.778" layer="95"/>
<attribute name="VALUE" x="79.756" y="23.622" size="1.778" layer="96"/>
</instance>
<instance part="J14" gate="G$1" x="81.28" y="12.7" smashed="yes">
<attribute name="NAME" x="77.47" y="14.224" size="1.778" layer="95"/>
<attribute name="VALUE" x="77.216" y="5.842" size="1.778" layer="96"/>
</instance>
<instance part="J15" gate="G$1" x="81.28" y="-5.08" smashed="yes">
<attribute name="NAME" x="77.47" y="-3.556" size="1.778" layer="95"/>
<attribute name="VALUE" x="77.216" y="-11.938" size="1.778" layer="96"/>
</instance>
<instance part="J16" gate="G$1" x="78.74" y="-22.86" smashed="yes">
<attribute name="NAME" x="74.93" y="-21.336" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.676" y="-29.718" size="1.778" layer="96"/>
</instance>
<instance part="J17" gate="G$1" x="78.74" y="-45.72" smashed="yes">
<attribute name="NAME" x="74.93" y="-44.196" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.676" y="-52.578" size="1.778" layer="96"/>
</instance>
<instance part="J18" gate="G$1" x="78.74" y="-71.12" smashed="yes">
<attribute name="NAME" x="74.93" y="-69.596" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.676" y="-77.978" size="1.778" layer="96"/>
</instance>
<instance part="J19" gate="G$1" x="78.74" y="-91.44" smashed="yes">
<attribute name="NAME" x="74.93" y="-89.916" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.676" y="-98.298" size="1.778" layer="96"/>
</instance>
<instance part="J20" gate="G$1" x="114.3" y="48.26" smashed="yes">
<attribute name="NAME" x="110.49" y="49.784" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="41.402" size="1.778" layer="96"/>
</instance>
<instance part="J21" gate="G$1" x="114.3" y="27.94" smashed="yes">
<attribute name="NAME" x="110.49" y="29.464" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="21.082" size="1.778" layer="96"/>
</instance>
<instance part="J22" gate="G$1" x="114.3" y="10.16" smashed="yes">
<attribute name="NAME" x="110.49" y="11.684" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="3.302" size="1.778" layer="96"/>
</instance>
<instance part="J23" gate="G$1" x="111.76" y="-12.7" smashed="yes">
<attribute name="NAME" x="107.95" y="-11.176" size="1.778" layer="95"/>
<attribute name="VALUE" x="107.696" y="-19.558" size="1.778" layer="96"/>
</instance>
<instance part="J24" gate="G$1" x="114.3" y="-35.56" smashed="yes">
<attribute name="NAME" x="110.49" y="-34.036" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="-42.418" size="1.778" layer="96"/>
</instance>
<instance part="J25" gate="G$1" x="114.3" y="-60.96" smashed="yes">
<attribute name="NAME" x="110.49" y="-59.436" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="-67.818" size="1.778" layer="96"/>
</instance>
<instance part="J26" gate="G$1" x="114.3" y="-78.74" smashed="yes">
<attribute name="NAME" x="110.49" y="-77.216" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="-85.598" size="1.778" layer="96"/>
</instance>
<instance part="J27" gate="G$1" x="114.3" y="-91.44" smashed="yes">
<attribute name="NAME" x="110.49" y="-89.916" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.236" y="-98.298" size="1.778" layer="96"/>
</instance>
<instance part="J28" gate="G$1" x="91.44" y="73.66" smashed="yes" rot="R90">
<attribute name="NAME" x="81.28" y="65.54" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="101.6" y="66.04" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="J29" gate="G$1" x="129.54" y="71.12" smashed="yes">
<attribute name="NAME" x="121.42" y="81.28" size="1.778" layer="95"/>
<attribute name="VALUE" x="121.92" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="J30" gate="G$1" x="170.18" y="109.22" smashed="yes" rot="R180">
<attribute name="NAME" x="178.3" y="99.06" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="177.8" y="119.38" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="J31" gate="G$1" x="167.64" y="40.64" smashed="yes">
<attribute name="NAME" x="159.52" y="50.8" size="1.778" layer="95"/>
<attribute name="VALUE" x="160.02" y="30.48" size="1.778" layer="96"/>
</instance>
<instance part="J32" gate="A" x="-33.02" y="50.8" smashed="yes">
<attribute name="NAME" x="-28.8544" y="56.1086" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-28.2194" y="47.2186" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J33" gate="A" x="-35.56" y="30.48" smashed="yes">
<attribute name="NAME" x="-31.3944" y="35.7886" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-30.7594" y="26.8986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J34" gate="A" x="-35.56" y="2.54" smashed="yes">
<attribute name="NAME" x="-31.3944" y="7.8486" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-30.7594" y="-1.0414" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J35" gate="A" x="-38.1" y="-25.4" smashed="yes">
<attribute name="NAME" x="-33.9344" y="-20.0914" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-33.2994" y="-28.9814" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J36" gate="A" x="-38.1" y="-53.34" smashed="yes">
<attribute name="NAME" x="-33.9344" y="-48.0314" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-33.2994" y="-56.9214" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J37" gate="A" x="-50.8" y="-76.2" smashed="yes">
<attribute name="NAME" x="-46.6344" y="-70.8914" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-45.9994" y="-79.7814" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J38" gate="A" x="-40.64" y="-111.76" smashed="yes">
<attribute name="NAME" x="-36.4744" y="-106.4514" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-35.8394" y="-115.3414" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J39" gate="A" x="-45.72" y="-137.16" smashed="yes">
<attribute name="NAME" x="-41.5544" y="-131.8514" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-40.9194" y="-140.7414" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J40" gate="A" x="-10.16" y="48.26" smashed="yes">
<attribute name="NAME" x="-5.9944" y="53.5686" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-5.3594" y="44.6786" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J41" gate="A" x="-7.62" y="30.48" smashed="yes">
<attribute name="NAME" x="-3.4544" y="35.7886" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-2.8194" y="26.8986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J42" gate="A" x="-10.16" y="2.54" smashed="yes">
<attribute name="NAME" x="-5.9944" y="7.8486" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-5.3594" y="-1.0414" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J45" gate="A" x="-20.32" y="-99.06" smashed="yes">
<attribute name="NAME" x="-16.1544" y="-93.7514" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-15.5194" y="-102.6414" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J46" gate="A" x="-20.32" y="-127" smashed="yes">
<attribute name="NAME" x="-16.1544" y="-121.6914" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-15.5194" y="-130.5814" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J49" gate="A" x="10.16" y="17.78" smashed="yes">
<attribute name="NAME" x="14.3256" y="23.0886" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="14.9606" y="14.1986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J50" gate="A" x="10.16" y="-20.32" smashed="yes">
<attribute name="NAME" x="14.3256" y="-15.0114" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="14.9606" y="-23.9014" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J53" gate="A" x="2.54" y="-101.6" smashed="yes">
<attribute name="NAME" x="6.7056" y="-96.2914" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="7.3406" y="-105.1814" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J54" gate="A" x="5.08" y="-121.92" smashed="yes">
<attribute name="NAME" x="9.2456" y="-116.6114" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="9.8806" y="-125.5014" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J56" gate="A" x="-30.48" y="71.12" smashed="yes">
<attribute name="NAME" x="-26.3144" y="76.4286" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-25.6794" y="67.5386" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="53.34" y1="45.72" x2="55.88" y2="45.72" width="0.1524" layer="91"/>
<label x="58.42" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="02"/>
<wire x1="43.18" y1="86.36" x2="43.18" y2="88.9" width="0.1524" layer="91"/>
<label x="43.18" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J28" gate="G$1" pin="02"/>
<wire x1="83.82" y1="86.36" x2="83.82" y2="88.9" width="0.1524" layer="91"/>
<label x="83.82" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J29" gate="G$1" pin="11"/>
<wire x1="116.84" y1="66.04" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
<label x="106.68" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J30" gate="G$1" pin="11"/>
<wire x1="182.88" y1="114.3" x2="185.42" y2="114.3" width="0.1524" layer="91"/>
<label x="190.5" y="114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J31" gate="G$1" pin="02"/>
<wire x1="180.34" y1="48.26" x2="182.88" y2="48.26" width="0.1524" layer="91"/>
<label x="185.42" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="2"/>
<wire x1="53.34" y1="30.48" x2="55.88" y2="30.48" width="0.1524" layer="91"/>
<label x="58.42" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="2"/>
<wire x1="53.34" y1="12.7" x2="55.88" y2="12.7" width="0.1524" layer="91"/>
<label x="58.42" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J5" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-5.08" x2="55.88" y2="-5.08" width="0.1524" layer="91"/>
<label x="58.42" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J6" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-25.4" x2="55.88" y2="-25.4" width="0.1524" layer="91"/>
<label x="58.42" y="-25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J7" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-48.26" x2="55.88" y2="-48.26" width="0.1524" layer="91"/>
<label x="58.42" y="-48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J9" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-93.98" x2="55.88" y2="-93.98" width="0.1524" layer="91"/>
<label x="58.42" y="-93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J10" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-116.84" x2="55.88" y2="-116.84" width="0.1524" layer="91"/>
<label x="58.42" y="-116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J11" gate="G$1" pin="2"/>
<wire x1="50.8" y1="-142.24" x2="53.34" y2="-142.24" width="0.1524" layer="91"/>
<label x="55.88" y="-142.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J12" gate="G$1" pin="2"/>
<wire x1="83.82" y1="45.72" x2="86.36" y2="45.72" width="0.1524" layer="91"/>
<label x="88.9" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J13" gate="G$1" pin="2"/>
<wire x1="86.36" y1="27.94" x2="88.9" y2="27.94" width="0.1524" layer="91"/>
<label x="91.44" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="2"/>
<wire x1="83.82" y1="10.16" x2="86.36" y2="10.16" width="0.1524" layer="91"/>
<label x="88.9" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J15" gate="G$1" pin="2"/>
<wire x1="83.82" y1="-7.62" x2="86.36" y2="-7.62" width="0.1524" layer="91"/>
<label x="86.36" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J16" gate="G$1" pin="2"/>
<wire x1="81.28" y1="-25.4" x2="83.82" y2="-25.4" width="0.1524" layer="91"/>
<label x="86.36" y="-25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J17" gate="G$1" pin="2"/>
<wire x1="81.28" y1="-48.26" x2="83.82" y2="-48.26" width="0.1524" layer="91"/>
<label x="86.36" y="-48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J18" gate="G$1" pin="2"/>
<wire x1="81.28" y1="-73.66" x2="83.82" y2="-73.66" width="0.1524" layer="91"/>
<label x="86.36" y="-73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J19" gate="G$1" pin="2"/>
<wire x1="81.28" y1="-93.98" x2="83.82" y2="-93.98" width="0.1524" layer="91"/>
<label x="86.36" y="-93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J20" gate="G$1" pin="2"/>
<wire x1="116.84" y1="45.72" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<label x="121.92" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J21" gate="G$1" pin="2"/>
<wire x1="116.84" y1="25.4" x2="119.38" y2="25.4" width="0.1524" layer="91"/>
<label x="121.92" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J22" gate="G$1" pin="2"/>
<wire x1="116.84" y1="7.62" x2="119.38" y2="7.62" width="0.1524" layer="91"/>
<label x="121.92" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J23" gate="G$1" pin="2"/>
<wire x1="114.3" y1="-15.24" x2="116.84" y2="-15.24" width="0.1524" layer="91"/>
<label x="119.38" y="-15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J24" gate="G$1" pin="2"/>
<wire x1="116.84" y1="-38.1" x2="119.38" y2="-38.1" width="0.1524" layer="91"/>
<label x="121.92" y="-38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J25" gate="G$1" pin="2"/>
<wire x1="116.84" y1="-63.5" x2="119.38" y2="-63.5" width="0.1524" layer="91"/>
<label x="121.92" y="-63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J26" gate="G$1" pin="2"/>
<wire x1="116.84" y1="-81.28" x2="119.38" y2="-81.28" width="0.1524" layer="91"/>
<label x="121.92" y="-81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="11"/>
<wire x1="55.88" y1="60.96" x2="55.88" y2="58.42" width="0.1524" layer="91"/>
<label x="55.88" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J41" gate="A" pin="1"/>
<wire x1="-7.62" y1="30.48" x2="-10.16" y2="30.48" width="0.1524" layer="91"/>
<label x="-17.78" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_7" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="05"/>
<wire x1="48.26" y1="60.96" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<label x="48.26" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J53" gate="A" pin="1"/>
<wire x1="2.54" y1="-101.6" x2="0" y2="-101.6" width="0.1524" layer="91"/>
<label x="-5.08" y="-99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_5" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="07"/>
<wire x1="50.8" y1="60.96" x2="50.8" y2="58.42" width="0.1524" layer="91"/>
<label x="50.8" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J49" gate="A" pin="1"/>
<wire x1="10.16" y1="17.78" x2="7.62" y2="17.78" width="0.1524" layer="91"/>
<label x="-2.54" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_3" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="09"/>
<wire x1="53.34" y1="60.96" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<label x="53.34" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J45" gate="A" pin="1"/>
<wire x1="-20.32" y1="-99.06" x2="-22.86" y2="-99.06" width="0.1524" layer="91"/>
<label x="-30.48" y="-96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="04"/>
<wire x1="45.72" y1="86.36" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="10V_DIO_8" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="06"/>
<wire x1="48.26" y1="86.36" x2="48.26" y2="88.9" width="0.1524" layer="91"/>
<label x="48.26" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J54" gate="A" pin="1"/>
<wire x1="5.08" y1="-121.92" x2="2.54" y2="-121.92" width="0.1524" layer="91"/>
<label x="-7.62" y="-119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_6" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="08"/>
<wire x1="50.8" y1="86.36" x2="50.8" y2="88.9" width="0.1524" layer="91"/>
<label x="50.8" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J50" gate="A" pin="1"/>
<wire x1="10.16" y1="-20.32" x2="7.62" y2="-20.32" width="0.1524" layer="91"/>
<label x="-5.08" y="-17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="10"/>
<wire x1="53.34" y1="86.36" x2="53.34" y2="88.9" width="0.1524" layer="91"/>
<label x="53.34" y="93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J46" gate="A" pin="1"/>
<wire x1="-20.32" y1="-127" x2="-22.86" y2="-127" width="0.1524" layer="91"/>
<label x="-27.94" y="-124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_DIO_2" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="12"/>
<wire x1="55.88" y1="86.36" x2="55.88" y2="88.9" width="0.1524" layer="91"/>
<label x="55.88" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J42" gate="A" pin="1"/>
<wire x1="-10.16" y1="2.54" x2="-12.7" y2="2.54" width="0.1524" layer="91"/>
<label x="-20.32" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="01"/>
<wire x1="83.82" y1="60.96" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="10V_AI_9" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="03"/>
<wire x1="86.36" y1="60.96" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<label x="86.36" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J39" gate="A" pin="1"/>
<wire x1="-45.72" y1="-137.16" x2="-48.26" y2="-137.16" width="0.1524" layer="91"/>
<label x="-60.96" y="-137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_7" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="05"/>
<wire x1="88.9" y1="60.96" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<label x="88.9" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J56" gate="A" pin="1"/>
<wire x1="-30.48" y1="71.12" x2="-33.02" y2="71.12" width="0.1524" layer="91"/>
<label x="-45.72" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_5" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="07"/>
<wire x1="91.44" y1="60.96" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
<label x="91.44" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J36" gate="A" pin="1"/>
<wire x1="-38.1" y1="-53.34" x2="-40.64" y2="-53.34" width="0.1524" layer="91"/>
<label x="-53.34" y="-53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_3" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="09"/>
<wire x1="93.98" y1="60.96" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<label x="93.98" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J33" gate="A" pin="1"/>
<wire x1="-35.56" y1="30.48" x2="-38.1" y2="30.48" width="0.1524" layer="91"/>
<label x="-50.8" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_1" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="11"/>
<wire x1="96.52" y1="60.96" x2="96.52" y2="58.42" width="0.1524" layer="91"/>
<label x="96.52" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J32" gate="A" pin="1"/>
<wire x1="-33.02" y1="50.8" x2="-35.56" y2="50.8" width="0.1524" layer="91"/>
<label x="-48.26" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_10" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="04"/>
<wire x1="86.36" y1="86.36" x2="86.36" y2="88.9" width="0.1524" layer="91"/>
<label x="86.36" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J40" gate="A" pin="1"/>
<wire x1="-10.16" y1="48.26" x2="-12.7" y2="48.26" width="0.1524" layer="91"/>
<label x="-17.78" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_8" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="06"/>
<wire x1="88.9" y1="86.36" x2="88.9" y2="88.9" width="0.1524" layer="91"/>
<label x="88.9" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J38" gate="A" pin="1"/>
<wire x1="-40.64" y1="-111.76" x2="-43.18" y2="-111.76" width="0.1524" layer="91"/>
<label x="-55.88" y="-111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_6" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="08"/>
<wire x1="91.44" y1="86.36" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<label x="91.44" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J37" gate="A" pin="1"/>
<wire x1="-50.8" y1="-76.2" x2="-53.34" y2="-76.2" width="0.1524" layer="91"/>
<label x="-66.04" y="-76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_4" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="10"/>
<wire x1="93.98" y1="86.36" x2="93.98" y2="88.9" width="0.1524" layer="91"/>
<label x="93.98" y="93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J35" gate="A" pin="1"/>
<wire x1="-38.1" y1="-25.4" x2="-40.64" y2="-25.4" width="0.1524" layer="91"/>
<label x="-53.34" y="-25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="10V_AI_2" class="0">
<segment>
<pinref part="J28" gate="G$1" pin="12"/>
<wire x1="96.52" y1="86.36" x2="96.52" y2="88.9" width="0.1524" layer="91"/>
<label x="96.52" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J34" gate="A" pin="1"/>
<wire x1="-35.56" y1="2.54" x2="-38.1" y2="2.54" width="0.1524" layer="91"/>
<label x="-50.8" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="ENC1" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="01"/>
<wire x1="116.84" y1="78.74" x2="114.3" y2="78.74" width="0.1524" layer="91"/>
<label x="106.68" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J26" gate="G$1" pin="1"/>
<wire x1="116.84" y1="-78.74" x2="119.38" y2="-78.74" width="0.1524" layer="91"/>
<label x="121.92" y="-78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="ENC2" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="03"/>
<wire x1="116.84" y1="76.2" x2="114.3" y2="76.2" width="0.1524" layer="91"/>
<label x="106.68" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="53.34" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<label x="58.42" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C1_TX" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="05"/>
<wire x1="116.84" y1="73.66" x2="114.3" y2="73.66" width="0.1524" layer="91"/>
<label x="106.68" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J27" gate="G$1" pin="1"/>
<wire x1="116.84" y1="-91.44" x2="119.38" y2="-91.44" width="0.1524" layer="91"/>
<label x="121.92" y="-91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C1_CLK" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="07"/>
<wire x1="116.84" y1="71.12" x2="114.3" y2="71.12" width="0.1524" layer="91"/>
<label x="104.14" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J27" gate="G$1" pin="2"/>
<wire x1="116.84" y1="-93.98" x2="119.38" y2="-93.98" width="0.1524" layer="91"/>
<label x="121.92" y="-93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C2_TX" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="09"/>
<wire x1="116.84" y1="68.58" x2="114.3" y2="68.58" width="0.1524" layer="91"/>
<label x="104.14" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J8" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-68.58" x2="55.88" y2="-68.58" width="0.1524" layer="91"/>
<label x="58.42" y="-68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM_1" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="02"/>
<wire x1="142.24" y1="78.74" x2="144.78" y2="78.74" width="0.1524" layer="91"/>
<label x="147.32" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J25" gate="G$1" pin="1"/>
<wire x1="116.84" y1="-60.96" x2="119.38" y2="-60.96" width="0.1524" layer="91"/>
<label x="121.92" y="-60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM_2" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="04"/>
<wire x1="142.24" y1="76.2" x2="144.78" y2="76.2" width="0.1524" layer="91"/>
<label x="147.32" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="1"/>
<wire x1="53.34" y1="33.02" x2="55.88" y2="33.02" width="0.1524" layer="91"/>
<label x="58.42" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="DAC1" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="06"/>
<wire x1="142.24" y1="73.66" x2="144.78" y2="73.66" width="0.1524" layer="91"/>
<label x="147.32" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J24" gate="G$1" pin="1"/>
<wire x1="116.84" y1="-35.56" x2="119.38" y2="-35.56" width="0.1524" layer="91"/>
<label x="121.92" y="-35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="DAC2" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="08"/>
<wire x1="142.24" y1="71.12" x2="144.78" y2="71.12" width="0.1524" layer="91"/>
<label x="147.32" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="1"/>
<wire x1="53.34" y1="15.24" x2="55.88" y2="15.24" width="0.1524" layer="91"/>
<label x="58.42" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C2_CLK" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="10"/>
<wire x1="142.24" y1="68.58" x2="144.78" y2="68.58" width="0.1524" layer="91"/>
<label x="147.32" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J8" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-71.12" x2="55.88" y2="-71.12" width="0.1524" layer="91"/>
<label x="58.42" y="-71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="J29" gate="G$1" pin="12"/>
<wire x1="142.24" y1="66.04" x2="144.78" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="09"/>
<wire x1="182.88" y1="111.76" x2="185.42" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V_DIO_1" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="02"/>
<wire x1="157.48" y1="101.6" x2="154.94" y2="101.6" width="0.1524" layer="91"/>
<label x="142.24" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J41" gate="A" pin="3"/>
<wire x1="-7.62" y1="25.4" x2="-10.16" y2="25.4" width="0.1524" layer="91"/>
<label x="-17.78" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_3" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="04"/>
<wire x1="157.48" y1="104.14" x2="154.94" y2="104.14" width="0.1524" layer="91"/>
<label x="142.24" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J45" gate="A" pin="3"/>
<wire x1="-20.32" y1="-104.14" x2="-22.86" y2="-104.14" width="0.1524" layer="91"/>
<label x="-30.48" y="-106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_5" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="06"/>
<wire x1="157.48" y1="106.68" x2="154.94" y2="106.68" width="0.1524" layer="91"/>
<label x="139.7" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J49" gate="A" pin="3"/>
<wire x1="10.16" y1="12.7" x2="7.62" y2="12.7" width="0.1524" layer="91"/>
<label x="0" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_7" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="08"/>
<wire x1="157.48" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<label x="142.24" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J53" gate="A" pin="3"/>
<wire x1="2.54" y1="-106.68" x2="0" y2="-106.68" width="0.1524" layer="91"/>
<label x="-7.62" y="-109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="10"/>
<wire x1="157.48" y1="111.76" x2="154.94" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="12"/>
<wire x1="157.48" y1="114.3" x2="154.94" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="01"/>
<wire x1="154.94" y1="48.26" x2="152.4" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V_AI_9" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="03"/>
<wire x1="154.94" y1="45.72" x2="152.4" y2="45.72" width="0.1524" layer="91"/>
<label x="139.7" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J39" gate="A" pin="3"/>
<wire x1="-45.72" y1="-142.24" x2="-48.26" y2="-142.24" width="0.1524" layer="91"/>
<label x="-63.5" y="-142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_7" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="05"/>
<wire x1="154.94" y1="43.18" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<label x="139.7" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J56" gate="A" pin="3"/>
<wire x1="-30.48" y1="66.04" x2="-33.02" y2="66.04" width="0.1524" layer="91"/>
<label x="-45.72" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_5" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="07"/>
<wire x1="154.94" y1="40.64" x2="152.4" y2="40.64" width="0.1524" layer="91"/>
<label x="139.7" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J36" gate="A" pin="3"/>
<wire x1="-38.1" y1="-58.42" x2="-40.64" y2="-58.42" width="0.1524" layer="91"/>
<label x="-53.34" y="-58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_3" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="09"/>
<wire x1="154.94" y1="38.1" x2="152.4" y2="38.1" width="0.1524" layer="91"/>
<label x="139.7" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J33" gate="A" pin="3"/>
<wire x1="-35.56" y1="25.4" x2="-38.1" y2="25.4" width="0.1524" layer="91"/>
<label x="-50.8" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_1" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="11"/>
<wire x1="154.94" y1="35.56" x2="152.4" y2="35.56" width="0.1524" layer="91"/>
<label x="139.7" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J32" gate="A" pin="3"/>
<wire x1="-33.02" y1="45.72" x2="-35.56" y2="45.72" width="0.1524" layer="91"/>
<label x="-48.26" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_10" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="04"/>
<wire x1="180.34" y1="45.72" x2="182.88" y2="45.72" width="0.1524" layer="91"/>
<label x="185.42" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J40" gate="A" pin="3"/>
<wire x1="-10.16" y1="43.18" x2="-12.7" y2="43.18" width="0.1524" layer="91"/>
<label x="-20.32" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_8" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="06"/>
<wire x1="180.34" y1="43.18" x2="182.88" y2="43.18" width="0.1524" layer="91"/>
<label x="185.42" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J38" gate="A" pin="3"/>
<wire x1="-40.64" y1="-116.84" x2="-43.18" y2="-116.84" width="0.1524" layer="91"/>
<label x="-55.88" y="-116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_6" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="08"/>
<wire x1="180.34" y1="40.64" x2="182.88" y2="40.64" width="0.1524" layer="91"/>
<label x="185.42" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J37" gate="A" pin="3"/>
<wire x1="-50.8" y1="-81.28" x2="-53.34" y2="-81.28" width="0.1524" layer="91"/>
<label x="-68.58" y="-81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_4" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="10"/>
<wire x1="180.34" y1="38.1" x2="182.88" y2="38.1" width="0.1524" layer="91"/>
<label x="185.42" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J35" gate="A" pin="3"/>
<wire x1="-38.1" y1="-30.48" x2="-40.64" y2="-30.48" width="0.1524" layer="91"/>
<label x="-55.88" y="-30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_AI_2" class="0">
<segment>
<pinref part="J31" gate="G$1" pin="12"/>
<wire x1="180.34" y1="35.56" x2="182.88" y2="35.56" width="0.1524" layer="91"/>
<label x="185.42" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J34" gate="A" pin="3"/>
<wire x1="-35.56" y1="-2.54" x2="-38.1" y2="-2.54" width="0.1524" layer="91"/>
<label x="-50.8" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_2" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="01"/>
<wire x1="182.88" y1="101.6" x2="185.42" y2="101.6" width="0.1524" layer="91"/>
<label x="187.96" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J42" gate="A" pin="3"/>
<wire x1="-10.16" y1="-2.54" x2="-12.7" y2="-2.54" width="0.1524" layer="91"/>
<label x="-17.78" y="-5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_4" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="03"/>
<wire x1="182.88" y1="104.14" x2="185.42" y2="104.14" width="0.1524" layer="91"/>
<label x="187.96" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J46" gate="A" pin="3"/>
<wire x1="-20.32" y1="-132.08" x2="-22.86" y2="-132.08" width="0.1524" layer="91"/>
<label x="-30.48" y="-134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_6" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="05"/>
<wire x1="182.88" y1="106.68" x2="185.42" y2="106.68" width="0.1524" layer="91"/>
<label x="187.96" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J50" gate="A" pin="3"/>
<wire x1="10.16" y1="-25.4" x2="7.62" y2="-25.4" width="0.1524" layer="91"/>
<label x="-5.08" y="-27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_DIO_8" class="0">
<segment>
<pinref part="J30" gate="G$1" pin="07"/>
<wire x1="182.88" y1="109.22" x2="185.42" y2="109.22" width="0.1524" layer="91"/>
<label x="187.96" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J54" gate="A" pin="3"/>
<wire x1="5.08" y1="-127" x2="2.54" y2="-127" width="0.1524" layer="91"/>
<label x="-5.08" y="-129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI1" class="0">
<segment>
<pinref part="J32" gate="A" pin="2"/>
<wire x1="-33.02" y1="48.26" x2="-35.56" y2="48.26" width="0.1524" layer="91"/>
<label x="-40.64" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J7" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-45.72" x2="55.88" y2="-45.72" width="0.1524" layer="91"/>
<label x="58.42" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI2" class="0">
<segment>
<pinref part="J34" gate="A" pin="2"/>
<wire x1="-35.56" y1="0" x2="-38.1" y2="0" width="0.1524" layer="91"/>
<label x="-45.72" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J11" gate="G$1" pin="1"/>
<wire x1="50.8" y1="-139.7" x2="53.34" y2="-139.7" width="0.1524" layer="91"/>
<label x="55.88" y="-139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI3" class="0">
<segment>
<pinref part="J33" gate="A" pin="2"/>
<wire x1="-35.56" y1="27.94" x2="-38.1" y2="27.94" width="0.1524" layer="91"/>
<label x="-43.18" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J6" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-22.86" x2="55.88" y2="-22.86" width="0.1524" layer="91"/>
<label x="58.42" y="-22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI4" class="0">
<segment>
<pinref part="J35" gate="A" pin="2"/>
<wire x1="-38.1" y1="-27.94" x2="-40.64" y2="-27.94" width="0.1524" layer="91"/>
<label x="-45.72" y="-27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J5" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-2.54" x2="55.88" y2="-2.54" width="0.1524" layer="91"/>
<label x="58.42" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI5" class="0">
<segment>
<pinref part="J36" gate="A" pin="2"/>
<wire x1="-38.1" y1="-55.88" x2="-40.64" y2="-55.88" width="0.1524" layer="91"/>
<label x="-45.72" y="-55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J15" gate="G$1" pin="1"/>
<wire x1="83.82" y1="-5.08" x2="86.36" y2="-5.08" width="0.1524" layer="91"/>
<label x="88.9" y="-5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI6" class="0">
<segment>
<pinref part="J37" gate="A" pin="2"/>
<wire x1="-50.8" y1="-78.74" x2="-53.34" y2="-78.74" width="0.1524" layer="91"/>
<label x="-58.42" y="-78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J10" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-114.3" x2="55.88" y2="-114.3" width="0.1524" layer="91"/>
<label x="58.42" y="-114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI8" class="0">
<segment>
<pinref part="J38" gate="A" pin="2"/>
<wire x1="-40.64" y1="-114.3" x2="-43.18" y2="-114.3" width="0.1524" layer="91"/>
<label x="-48.26" y="-114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J12" gate="G$1" pin="1"/>
<wire x1="83.82" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<label x="86.36" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI9" class="0">
<segment>
<pinref part="J39" gate="A" pin="2"/>
<wire x1="-45.72" y1="-139.7" x2="-48.26" y2="-139.7" width="0.1524" layer="91"/>
<label x="-53.34" y="-139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J9" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-91.44" x2="55.88" y2="-91.44" width="0.1524" layer="91"/>
<label x="58.42" y="-91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI10" class="0">
<segment>
<pinref part="J40" gate="A" pin="2"/>
<wire x1="-10.16" y1="45.72" x2="-12.7" y2="45.72" width="0.1524" layer="91"/>
<label x="-15.24" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J13" gate="G$1" pin="1"/>
<wire x1="86.36" y1="30.48" x2="88.9" y2="30.48" width="0.1524" layer="91"/>
<label x="91.44" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO1" class="0">
<segment>
<pinref part="J41" gate="A" pin="2"/>
<wire x1="-7.62" y1="27.94" x2="-10.16" y2="27.94" width="0.1524" layer="91"/>
<label x="-12.7" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J19" gate="G$1" pin="1"/>
<wire x1="81.28" y1="-91.44" x2="83.82" y2="-91.44" width="0.1524" layer="91"/>
<label x="86.36" y="-91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO2" class="0">
<segment>
<pinref part="J42" gate="A" pin="2"/>
<wire x1="-10.16" y1="0" x2="-12.7" y2="0" width="0.1524" layer="91"/>
<label x="-15.24" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J20" gate="G$1" pin="1"/>
<wire x1="116.84" y1="48.26" x2="119.38" y2="48.26" width="0.1524" layer="91"/>
<label x="121.92" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO3" class="0">
<segment>
<pinref part="J45" gate="A" pin="2"/>
<wire x1="-20.32" y1="-101.6" x2="-22.86" y2="-101.6" width="0.1524" layer="91"/>
<label x="-30.48" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J18" gate="G$1" pin="1"/>
<wire x1="81.28" y1="-71.12" x2="83.82" y2="-71.12" width="0.1524" layer="91"/>
<label x="86.36" y="-71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO4" class="0">
<segment>
<pinref part="J46" gate="A" pin="2"/>
<wire x1="-20.32" y1="-129.54" x2="-22.86" y2="-129.54" width="0.1524" layer="91"/>
<label x="-27.94" y="-129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J21" gate="G$1" pin="1"/>
<wire x1="116.84" y1="27.94" x2="119.38" y2="27.94" width="0.1524" layer="91"/>
<label x="121.92" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO5" class="0">
<segment>
<pinref part="J49" gate="A" pin="2"/>
<wire x1="10.16" y1="15.24" x2="7.62" y2="15.24" width="0.1524" layer="91"/>
<label x="0" y="15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J17" gate="G$1" pin="1"/>
<wire x1="81.28" y1="-45.72" x2="83.82" y2="-45.72" width="0.1524" layer="91"/>
<label x="86.36" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO6" class="0">
<segment>
<pinref part="J50" gate="A" pin="2"/>
<wire x1="10.16" y1="-22.86" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
<label x="0" y="-22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J22" gate="G$1" pin="1"/>
<wire x1="116.84" y1="10.16" x2="119.38" y2="10.16" width="0.1524" layer="91"/>
<label x="121.92" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO7" class="0">
<segment>
<pinref part="J53" gate="A" pin="2"/>
<wire x1="2.54" y1="-104.14" x2="0" y2="-104.14" width="0.1524" layer="91"/>
<label x="-2.54" y="-104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J16" gate="G$1" pin="1"/>
<wire x1="81.28" y1="-22.86" x2="83.82" y2="-22.86" width="0.1524" layer="91"/>
<label x="86.36" y="-22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO8" class="0">
<segment>
<pinref part="J54" gate="A" pin="2"/>
<wire x1="5.08" y1="-124.46" x2="2.54" y2="-124.46" width="0.1524" layer="91"/>
<label x="-5.08" y="-124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J23" gate="G$1" pin="1"/>
<wire x1="114.3" y1="-12.7" x2="116.84" y2="-12.7" width="0.1524" layer="91"/>
<label x="119.38" y="-12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="AI7" class="0">
<segment>
<pinref part="J56" gate="A" pin="2"/>
<wire x1="-30.48" y1="68.58" x2="-33.02" y2="68.58" width="0.1524" layer="91"/>
<label x="-40.64" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="1"/>
<wire x1="83.82" y1="12.7" x2="86.36" y2="12.7" width="0.1524" layer="91"/>
<label x="88.9" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
