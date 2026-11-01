adb-command-guides ⚡

Make your Android phone feel faster — no root, no PC.
Just [Shizuku](https://shizuku.rikka.app) + [aShell](https://github.com/saitamasahil/aShell).

Requirements
1. Android 7.0+ (Shizuku requirement)
2. [Shizuku](https://shizuku.rikka.app) started (wireless debugging is easiest)
3. [aShell](https://github.com/saitamasahil/aShell) installed, Shizuku permission granted

Quick start (scripts)
Copy this repo to your phone, then in aShell:

```sh
# run EVERYTHING at once (animations + ram + auto-detected debloat)
sh scripts/speed.sh all

# or pick one
sh scripts/speed.sh anim      # faster animations (default 0.5x)
sh scripts/speed.sh anim off  # animations fully off
sh scripts/speed.sh anim reset
sh scripts/speed.sh ram       # free RAM
sh scripts/speed.sh debloat   # disable bloatware (auto-detects brand)
sh scripts/speed.sh undo      # restore all defaults
```

Custom debloat list:

```sh
sh scripts/speed.sh debloat /sdcard/Download/my-list.txt
```

Quick copy-paste (no download needed)
Paste straight into aShell — fastest animations possible:

```sh
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5
```

Restore defaults:

```sh
settings put global window_animation_scale 1
settings put global transition_animation_scale 1
settings put global animator_duration_scale 1
```

Docs
- [Setup Shizuku + aShell](docs/setup-shizuku.md)
- [Animations explained](docs/animations.md)
- [RAM cleanup](docs/ram.md)
- [Debloating safely](docs/debloat.md)
- [Troubleshooting](docs/troubleshooting.md)

Package lists
- `data/safe-packages/` — per-brand safe-to-disable lists (generic, samsung, xiaomi, oppo)
- `data/safe-packages/dangerous.txt` — never touch these

Warnings
Read [WARNING.md](WARNING.md) before debloating.

Contributing
Got a package that's safe to disable on your phone? Open an issue or PR.
See [CONTRIBUTING.md](CONTRIBUTING.md).

License
MIT — see [LICENSE](LICENSE). Use at your own risk.
