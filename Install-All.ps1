. .\Install-Scoop.ps1
. .\Install-Sudo.ps1
. .\Install-Packages.ps1
. .\Install-Dotfiles.ps1

Install-Scoop
Install-Sudo
Install-Packages .\packages.json
Install-Dotfiles .\dotfiles.json
