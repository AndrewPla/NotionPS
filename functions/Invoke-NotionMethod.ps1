function Invoke-NotionMethod {
	[CmdletBinding()]
	Param (

		[SecureString]$ApiKey,

		[Parameter(Mandatory)]
		[Uri]$Uri,

		[ValidateSet('Get', 'Set', 'Put', 'Patch', 'Delete', 'Post', 'Head', 'Merge', 'Options')]
		[string]$Method = 'Get',

		[string]$NotionVersion = "2022-06-28"

	)

	if (-not $ApiKey) { $ApiKey = Get-NotionConfig }
	$headers = @{
		Authorization    = "Bearer $(ConvertFrom-SecureString -SecureString $apikey -AsPlainText)"
		'Notion-Version' = $NotionVersion
	}
	$params = @{
		Uri     = $Uri
		Method  = $Method
		Headers = $headers
	}

	Write-Verbose "Invoke-RestMethod Params: $($params.Keys -join ",")"	
	Invoke-RestMethod @params
	
}
