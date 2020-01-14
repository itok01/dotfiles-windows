Function Install-Dotfiles {
    Param ($dotfilesJsonPath)

    # Parse json file
    $dotfiles = Get-Content $dotfilesJsonPath | ConvertFrom-Json

    foreach ($dotfile in $dotfiles) {
        $item = $ExecutionContext.InvokeCommand.ExpandString($dotfile.item)
        $path = $ExecutionContext.InvokeCommand.ExpandString($dotfile.path)
        Write-Output "Copying $item to $path ..."
        Copy-Item $item $path
    }
}
