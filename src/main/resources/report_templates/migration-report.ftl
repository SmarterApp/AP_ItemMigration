=======================
Report Summary
=======================

    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime?long} seconds

Total Items To Migrate: ${report.itemsToProcessCount}
 Total Branch Failures: ${report.branchFailureCount}

=======================
Report Errors
=======================
<#list report.failedBranchMigrations>

${"Item ID"?left_pad(10)},${"Branch"?left_pad(40)},${"Migration Set"?left_pad(20)},${"Migration"?left_pad(20)},${"Error"?left_pad(0)}
    <#items as error>
${error.itemId?left_pad(10)},${error.branchName?left_pad(40)},${error.migrationSetKey?left_pad(20)},${error.migrationName?left_pad(20)},${error.errorMessage?left_pad(0)}
    </#items>
</#list>


=======================
Successful Migrations
=======================
<#list report.itemResults as itemResult>
Item ${itemResult.itemId}
    <#list itemResult.successfulBranchMigrations as branchResult>
    ${branchResult.branchName} ${branchResult.success?string('success', 'error')}
    </#list>
</#list>

