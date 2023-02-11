function Get-NotionPagePropertyItem {
    [OutputType( [PSCustomObject] )]
    param (
        [Parameter(Mandatory)]
        [string]$PageId,

        [Parameter(Mandatory)]
        [string]$PropertyId
    )
    $params = @{
        NotionVersion = '2022-02-22'
        Method        = 'Get'
        Uri           = "https://api.notion.com/v1/pages/$PageId/properties/$PropertyId"
        ApiKey        = (Get-NotionConfig)
    }
    Invoke-NotionMethod @params
}