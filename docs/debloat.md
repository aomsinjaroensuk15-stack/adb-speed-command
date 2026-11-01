Debloating safely

How it works
`speed.sh debloat` reads a package list and runs:

```sh
pm disable-user --user 0 <package>
```

This disables the app for your user but keeps it installed — fully reversible.

Brand detection
The script reads `ro.product.manufacturer` and picks:
`samsung.txt` / `xiaomi.txt` / `oppo.txt` → falls back to `generic.txt`

Missing your brand? Copy `generic.txt` to `yourbrand.txt` and edit it.

Custom list
One package per line, `#` for comments:

```sh
sh scripts/speed.sh debloat /sdcard/Download/my-list.txt
```

Verify a package name first

```sh
pm list packages | grep facebook
```

Restore

```sh
pm enable <package>
```
