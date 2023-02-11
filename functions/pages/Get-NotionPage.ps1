function Get-NotionPage {
    [OutputType( [PSCustomObject] )]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [string]$PageId
    )
    $params = @{
        NotionVersion = '2022-02-22'
        Method        = 'Get'
        Uri           = "https://api.notion.com/v1/pages/$PageId"
        ApiKey        = (Get-NotionConfig)
    }
    Invoke-NotionMethod @params
}