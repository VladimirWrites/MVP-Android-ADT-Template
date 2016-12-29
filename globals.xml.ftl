<globals>
	<global id="resOut" value="${resDir}" />
	<global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
	<global id="activityClass" value="<#if classNameFirst>${underscoreToCamelCase(className)}Activity<#else>Activity${underscoreToCamelCase(className)}</#if>" />
	<global id="fragmentClass" value="<#if classNameFirst>${underscoreToCamelCase(className)}Fragment<#else>Fragment${underscoreToCamelCase(className)}</#if>" />
	<global id="presenterClass" value="<#if classNameFirst>${underscoreToCamelCase(className)}Presenter<#else>Presenter${underscoreToCamelCase(className)}</#if>" />
	<global id="contractClass" value="<#if classNameFirst>${underscoreToCamelCase(className)}Contract<#else>Contract${underscoreToCamelCase(className)}</#if>" />

</globals>