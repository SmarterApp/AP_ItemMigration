=======================
Report Summary
=======================

    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime?long} seconds

Total Items To Migrate: ${report.itemsToProcessCount}

=======================
GitLab Renamed Report Details
=======================
<#list report.itemResults as result>

Item ${result.itemId} <#if result.failed == true> - Failed</#if>
    <#if result.failedMessageCount gt 0>
    <#list result.failedMessages as message>
        - ${message}
    </#list>
    </#if>
    <#if result.successMessageCount gt 0>
    <#list result.successMessages as message>
        - ${message}
    </#list>
    </#if>
</#list>






