<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/Contract.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${contractClass}.java" />
	<instantiate from="src/app_package/Activity.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<instantiate from="src/app_package/Presenter.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />
	<instantiate from="src/app_package/Fragment.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

	<instantiate from="res/layout/activity.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

	<instantiate from="res/layout/fragment.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

	<merge from="AndroidManifest.xml.ftl"
		to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</recipe>