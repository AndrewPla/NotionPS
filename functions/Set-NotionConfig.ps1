function Set-NotionConfig {
    <#
    .DESCRIPTION 
        Sets environmental variables for Notion.
    .Parameter ApiKey
        The API key for notion
    #>
    [CmdletBinding()]
    param (

        [Parameter(Mandatory)]
        [securestring]$ApiKey
    )
    $Script:NotionApiKey = $ApiKey    
}
