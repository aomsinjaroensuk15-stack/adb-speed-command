Setup: Shizuku + aShell

1. Install both apps
- Shizuku (Play Store or GitHub)
- aShell (Play Store or GitHub)

2. Start Shizuku — pick your method

Wireless debugging (Android 11+, easiest, no PC)
1. Enable Developer options (tap Build number 7 times in About phone)
2. Developer options → Wireless debugging → ON
3. Open Shizuku → "Start via wireless debugging" → pair → start
4. Done. Shizuku stays alive until reboot (or use Shizuku's auto-start options)

PC/ADB (any Android version)

```sh
adb shell sh /sdcard/Android/data/moe.shizuku.privileged.api/start.sh
```

3. Grant aShell
Open aShell → it asks for Shizuku permission → Allow.

4. Verify
In aShell run:

```sh
settings get global window_animation_scale
```

If it prints a number, you're in. 🎉
