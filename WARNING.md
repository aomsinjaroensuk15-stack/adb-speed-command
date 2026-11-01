⚠️ Read before debloating

Never disable (see also `data/safe-packages/dangerous.txt`)
- `com.android.systemui` — status bar / navigation
- `com.android.settings` — Settings app
- `com.android.packageinstaller` — app installs
- `com.google.android.gms` — Play Services (breaks everything Google)
- `com.android.phone` / `com.android.incallui` — phone calls
- `com.android.vending` — Play Store
- `android` / anything `com.android.internal`

Rules
1. Only disable apps you recognize and don't use
2. Prefer editing your brand's list in `data/safe-packages/` first
3. Test after each run — if something breaks: `pm enable <package>`
4. We only use `pm disable-user`, which is fully reversible

If something breaks

```sh
# re-enable a single app
pm enable <package>

# or restore everything
sh scripts/speed.sh undo
```

Worst case (no PC)
Boot into Safe Mode — all user-disabled system apps come back temporarily,
then re-enable from aShell.
