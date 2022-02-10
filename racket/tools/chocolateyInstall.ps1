$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.4/installers/racket-8.4-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.4/installers/racket-8.4-x86_64-win32-cs.exe'
	checksum = 'e9da6a514e66e10d976d3757d50cb1d509db7d6d6c643168cbb7553e5c40c289'
	checksum64 = 'cc5a161687b6b9faa7fd5632420068ff511c0afce67740efa9e9bd9ae2d4d884'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
