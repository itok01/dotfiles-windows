. .\Test-CommandExists.ps1

Function Install-Scoop {
    if (!(Test-CommandExists scoop)) {
        Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    }
}
