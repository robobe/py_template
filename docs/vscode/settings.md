
# VSCode Python project settings
## Common
- Binding new file and folder to keyboard shortcuts

```json
[
    {
        "key": "ctrl+n",
        "command": "explorer.newFile",
        "when": "explorerViewletFocus"
    },
    {
        "key": "ctrl+shift+n",
        "command": "explorer.newFolder",
        "when": "explorerViewletFocus"
    }
]
```

## Hide files and folders from file explorer
```json
"files.exclude": {
    ...        
    "**/*egg-info": true,
    "**/__pycache__": true
    }
```

## Linter
- using flake8
- using setup.cfg to config flake8
- [Warning / Error codes](https://pep8.readthedocs.io/en/latest/intro.html#error-codes)


```json
"python.linting.flake8Enabled": true,
"python.linting.enabled": true,
"python.linting.flake8Args": ["--config=setup.cfg"]
```

```ini
--8<-- "setup.cfg"
```

!!! Note
    Check that setup.cfg flake8 section work with W292  
    W292 no newline at end of file


## type hinting
```
"python.linting.mypyEnabled": true
```


## Formatters
- black
- isort
  
### config
!!! Note
    config via `myproject.toml` `black` support only this option
    `isort` support both `setup.cfg` but i move his be together with `black`

```json
"python.formatting.provider": "black",
    "[python]": {
        "editor.formatOnSave": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": true
        }
    }
```

```
--8<-- "pyproject.toml"
```

### format control
- fmt: off
- fmt: on (default but must switch to `on` after `off` section to control format again)


```python
# fmt: off
custom_formatting = [
    0, 1, 2,
    3, 4, 5,
    6, 7, 8,
]

# fmt: on
regular_formatting = [0, 1, 2, 3, 4, 5, 6, 7, 8]
```