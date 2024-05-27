$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.13/installers/racket-8.13-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.13/installers/racket-8.13-x86_64-win32-cs.exe'
	checksum = '68090a3a5f4bc33397a186d3ec5c267e11f350a73390e2fecdb17051481162ab'
	checksum64 = '91a600b7215e0752d0ddf703c83189194aa6f8ac54472007399290dc1b07abe6'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
