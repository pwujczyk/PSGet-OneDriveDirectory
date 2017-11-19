#Created in following environment
#Name                           Value
#----                           -----
#PSVersion                      5.1.14393.1358
#PSEdition                      Desktop
#PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
#BuildVersion                   10.0.14393.1358
#CLRVersion                     4.0.30319.42000
#WSManStackVersion              3.0
#PSRemotingProtocolVersion      2.3
#SerializationVersion           1.1.0.1

function GetOneDriveUserFolder($account)
{	
	$OneDriveUserFolder=$account.GetValue("UserFolder")
	Write-Verbose "OneDrive drectory: '$OneDriveUserFolder' (Result)"
	return $OneDriveUserFolder
}

function Get-OneDriveDirectory()
{
	[cmdletbinding()]
	param ([switch]$Personal,[switch]$Business,[switch]$JustDirectory)

	if ($Personal.IsPresent){Write-Verbose "Looking for Personal OneDrive directory"}
	if ($Business.IsPresent){Write-Verbose "Looking for Bussienss OneDrive directory"}

	$anyOneDrive=!($Personal.IsPresent -or $Business.IsPresent)
	$lookForPersonal=$Personal.IsPresent -or $anyOneDrive
	$lookForBussiness=$Business.IsPresent -or $anyOneDrive
	
	$result=@{}

	$oneDriveAccounts=Get-ChildItem -Path "HKCU:\SOFTWARE\Microsoft\OneDrive\Accounts"
	foreach($account in $oneDriveAccounts)
	{
		Write-Verbose "One of OneDrive registry keys: $account"
		if ($account.PSChildName -eq "Personal" -and $lookForPersonal)
		{
			Write-Verbose "Found Personal Registry key"
			$result.Personal=$(GetOneDriveUserFolder $account)
			#return GetOneDriveUserFolder $account
			
		}
		if ($account.GetValue("Business") -eq 1 -and $lookForBussiness)
		{
			Write-Verbose "Found Bussines Registry key"
			$result.Business=$(GetOneDriveUserFolder $account)
			#return GetOneDriveUserFolder $account
		}
	}
	
	if ($result.Count -gt 0)
	{
		if ($JustDirectory.IsPresent)
		{
			return $result.Values
		}
		else
		{
			return $result
		}
	}
	else
	{
		throw [System.Exception] "Probably OneDrive is not installed"
	}
}


Export-ModuleMember -Function Get-OneDriveDirectory