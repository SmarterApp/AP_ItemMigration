=======================
Report Summary
=======================

    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime?long} seconds

Total Items To Migrate: ${report.itemsToProcessCount}

=======================
Report Details
=======================

<#list report.itemResults as result>
Item ${result.itemId} <#if result.failedMessages?size gt 0> - Failed</#if><#list result.allMessages as message>
    ${message}</#list>
</#list>




