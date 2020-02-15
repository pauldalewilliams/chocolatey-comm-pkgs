$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.6/installers/racket-7.6-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.6/installers/racket-7.6-x86_64-win32.exe'
	checksum = '486f777e51502fecc3a3786a42eb36803ffde59b'
	checksum64 = '1fd3529f82806fa0c9c0dabd8380b739b03ff4ca'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
