# dotfiles-windows
Windows dotfiles management system with JSON

## Magage install packages with JSON
Install packages by [Scoop](https://github.com/lukesampson/scoop)
```
{
    "user": [
        {
            "name": "7zip",
            "version": "latest"
        },
        {
            "name": "git",
            "version": "2.25.0.windows.1"
        }
    ]
}
```

## Magage dotfiles with JSON
```
[
    {
        "item": ".\\dotfiles\\vscode\\settings.json",
        "path": "$env:USERPROFILE\\AppData\\Roaming\\Code\\User\\settings.json"
    }
]
```
