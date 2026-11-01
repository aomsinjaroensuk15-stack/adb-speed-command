Contributing

Thanks for helping! Two main ways:

1. Add safe packages for your brand
- Edit or create `data/safe-packages/<yourbrand>.txt` (lowercase brand)
- One package per line, `#` comments allowed
- Only add apps you personally disabled and used the phone normally for a week

2. Fix / improve scripts
- Scripts must stay POSIX `sh` compatible (aShell runs them, not bash)
- Keep `undo.sh` able to revert anything the tool changes
- The CI workflow syntax-checks every shell script on push

Rules
- Never add anything from `dangerous.txt` to a safe list
- Test on your own device before opening a PR
