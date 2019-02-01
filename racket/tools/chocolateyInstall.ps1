$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.2/installers/racket-7.2-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.2/installers/racket-7.2-x86_64-win32.exe'
	checksum = '480d5ccd1f48831a0ed6c085bfe22145f137ffb6'
	checksum64 = 'bdacb28b7f442e99359462d6b640c39c432bbbc1'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
