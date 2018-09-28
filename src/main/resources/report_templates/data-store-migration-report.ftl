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

Item ${result.itemId} <#if result.failed == true> - Failed</#if>
    <#if result.failedMessageCount gt 0>
    Failed:
    <#list result.failedMessages as message>
        - ${message}
    </#list>
    </#if>
    <#if result.migrationResultsCount gt 0>
    Migrations:
    <#list result.migrationResults as migration>
        ${migration.migrationSet} -
        <#if migration.failedMessageCount gt 0>
            <#list migration.failedMessages as message>${message}</#list>
        </#if>
        <#if migration.successMessageCount gt 0>
            <#list migration.successMessages as message>${message}</#list>
        </#if>
    </#list>
    </#if>
</#list>






