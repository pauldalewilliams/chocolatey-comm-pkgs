$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.3/installers/racket-8.3-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.3/installers/racket-8.3-x86_64-win32-cs.exe'
	checksum = '8fa4eed097d460261b48bb3fc0a3a051917ee3f9ef212960ce89846e00c02408'
	checksum64 = '3702502bf7516c55ffd527590938445282f7735683aeb68d6e327716e9c968da'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
