${report.itemId}
<#list report.branches as branch>
    <#if branch.success == true>
${branch.branchName?left_pad(10)} - ${branch.entityId}
        <#list branch.attachments as attachment>
            <#if attachment.success == true>
        ${attachment.fileName?left_pad(14)}
            <#else>
        ${attachment.fileName?left_pad(14)} - ${attachment.message}
            </#if>
        </#list>
    <#else>
${branch.branchName?left_pad(10)} - ${branch.message}
    </#if>
</#list>