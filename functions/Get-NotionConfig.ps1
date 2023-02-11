function Get-NotionConfig {
    [CmdletBinding()]
    param (
        
    )
    if ($Script:NotionApiKey) {
        $Script:NotionApiKey
    }
    else {
        throw 'No API key found. Run Set-NotionConfig to set your API key.'
    }
}