Function Install-Dotfiles {
    Param ($dotfilesJsonPath)

    # Parse json file
    $dotfiles = Get-Content $dotfilesJsonPath | ConvertFrom-Json

    foreach ($dotfile in $dotfiles) {
        $item = Convert-Path $ExecutionContext.InvokeCommand.ExpandString($dotfile.item)
        $path = Convert-Path $ExecutionContext.InvokeCommand.ExpandString($dotfile.path)
        New-Item -Type SymbolicLink -Path $path -Value $item -Force
    }
}

Install-Dotfiles .\dotfiles.json
