@{
	# Script module or binary module file associated with this manifest
	RootModule        = 'NotionPS.psm1'
	
	# Version number of this module.
	ModuleVersion     = '1.0.0'
	
	# ID used to uniquely identify this module
	GUID              = '6285c522-446d-4a1f-b4d8-a714434af54f'
	
	# Author of this module
	Author            = 'andrew.pla'
	
	# Company or vendor of this module
	CompanyName       = '@AndrewPlaTech'
	
	# Copyright statement for this module
	Copyright         = 'Copyright (c) 2022 andrew.pla'
	
	# Description of the functionality provided by this module
	Description       = 'PowerShell module for the Notion API'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '5.0'
	
	# Modules that must be imported into the global environment prior to importing this module
	# RequiredModules = @(@{ ModuleName='PSFramework'; ModuleVersion='1.6.214' })
	
	# Assemblies that must be loaded prior to importing this module
	# RequiredAssemblies = @('bin\NotionPS.dll')
	
	# Type files (.ps1xml) to be loaded when importing this module
	# Expensive for import time, no more than one should be used.
	# TypesToProcess = @('xml\NotionPS.Types.ps1xml')
	
	# Format files (.ps1xml) to be loaded when importing this module.
	# Expensive for import time, no more than one should be used.
	# FormatsToProcess = @('xml\NotionPS.Format.ps1xml')
	
	# Functions to export from this module
	FunctionsToExport = 'Set-NotionConfig', 'Get-NotionConfig', 'Get-NotionPage', 'Get-NotionDatabase', 'Invoke-NotionMethod', 'Get-NotionPagePropertyItem', 'Get-NotionComment'
	
	# Cmdlets to export from this module
	CmdletsToExport   = ''
	
	# Variables to export from this module
	VariablesToExport = ''
	
	# Aliases to export from this module
	AliasesToExport   = ''
	
	# List of all files packaged with this module
	FileList          = @()
	
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData       = @{
		
		#Support for PowerShellGet galleries.
		PSData = @{
			
			# Tags applied to this module. These help with module discovery in online galleries.
			# Tags = @()
			
			# A URL to the license for this module.
			# LicenseUri = ''
			
			# A URL to the main website for this project.
			# ProjectUri = ''
			
			# A URL to an icon representing this module.
			# IconUri = ''
			
			# ReleaseNotes of this module
			# ReleaseNotes = ''
			
		} # End of PSData hashtable
		
	} # End of PrivateData hashtable
}