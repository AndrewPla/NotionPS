function Get-NotionComment {
    [OutputType( [PSCustomObject] )]
    param(
        [Parameter(Mandatory)]
        [Alias('Id')]
        [string]$BlockId,

        [string]$StartCursor,

        [int]$PageSize,

        [string]$NotionVersion = '2022-06-28'
    )


    # https://developers.notion.com/reference/retrieve-a-comment

    $params = @{
        NotionVersion = $NotionVersion
        Method        = 'Get'
        Uri           = "https://api.notion.com/v1/comments?block_id=$BlockId"
        ApiKey        = (Get-NotionConfig)
    }

    if ($Cursor) { $params.uri = $Params.uri + "&start_cursor=$StartCursor" }
    if ($PageSize) { $params.uri = $Params.uri + "&page_size=$PageSize" }
    Invoke-NotionMethod @params
}