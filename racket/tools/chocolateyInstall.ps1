$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.9/installers/racket-7.9-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.9/installers/racket-7.9-x86_64-win32.exe'
	checksum = 'b9ed2669bce47e486dd071ff9988e5e7798c8f5f'
	checksum64 = '3e4d5c63b9e01251f29b05d3f6df6ff2c14e1f2c'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
