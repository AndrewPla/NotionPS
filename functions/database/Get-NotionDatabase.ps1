function Get-NotionDatabase {
    <#
    .SYNOPSIS
        Retrieves a Database object using the ID specified.
    .DESCRIPTION
        A longer description of the function, its purpose, common use cases, etc.
    .NOTES
        Make sure to add a connection for your application to the database. Connections > Add connections.

        If you are looking at your database, you can get the database ID from the URL. https://www.notion.so/<long_hash_1>?v=<long_hash_2> 

        <long_hash_1> is the Database ID, while <long_hash_2> is the view ID.
    .PARAMETER DatabaseId
        Identifier for the notion database. 
    .EXAMPLE
        Get-NotionDatabase -DatabaseId
        Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines
    #>
    
    
    [OutputType( [PSCustomObject] )]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [string]$DatabaseId
    )
    $params = @{
        NotionVersion = '2022-02-22'
        Method        = 'Get'
        Uri           = "https://api.notion.com/v1/databases/$DatabaseId"
        ApiKey        = (Get-NotionConfig)
    }
    Invoke-NotionMethod @params
}