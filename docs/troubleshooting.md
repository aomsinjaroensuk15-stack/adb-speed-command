Troubleshooting

"Permission denied" in aShell
Shizuku isn't running or permission was revoked. Restart Shizuku,
reopen aShell, allow again.

"settings: not found"
You're not inside the Shizuku shell — aShell should show a Shizuku badge.
Check the aShell app settings if it fell back to local shell.

App broke after debloat

```sh
pm enable <package>
```

If unsure which one, re-check the last output of `speed.sh debloat`
or your commit history / list file.

Everything feels weird

```sh
sh scripts/speed.sh undo
```
