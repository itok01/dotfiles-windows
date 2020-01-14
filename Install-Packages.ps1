Function Install-Packages {
    Param ($packagesJsonPath)

    # Parse json file
    $packages = Get-Content $packagesJsonPath | ForEach-Object { $ExecutionContext.InvokeCommand.ExpandString($_) } | ConvertFrom-Json

    # Install packages for user
    foreach ($package in $packages.user) {
        $name = $ExecutionContext.InvokeCommand.ExpandString($package.name)
        $version = $ExecutionContext.InvokeCommand.ExpandString($package.version)
        if ($package.version -eq 'latest') {
            scoop install $name
        }
        else {
            scoop install ($name + '@' + $version)
        }
    }

    # Install packages for global
    #foreach ($package in $packages.global) {
    #    $name = $ExecutionContext.InvokeCommand.ExpandString($package.name)
    #    $version = $ExecutionContext.InvokeCommand.ExpandString($package.version)
    #    if ($package.version -eq 'latest') {
    #        sudo scoop install $name --global
    #    }
    #    else {
    #        sudo scoop install ($name + '@' + $version) --global
    #    }
    #}
}
