. .\Test-CommandExists.ps1

Function Install-Sudo {
    if (!(Test-CommandExists sudo)) {
        scoop install sudo
    }
}
