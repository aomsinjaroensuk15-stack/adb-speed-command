# common.sh — shared helpers (sourced by speed.sh)

log()  { echo "[*] $1"; }
ok()   { echo "    [+] $1"; }
skip() { echo "    [-] $1"; }
die()  { echo "[!] $1"; exit 1; }

# safe settings put with fallback
put() {
  settings put global "$1" "$2" && ok "$1 = $2" || skip "failed: $1"
}

# detect phone brand (lowercase)
detect_brand() {
  getprop ro.product.manufacturer 2>/dev/null | tr "[:upper:]" "[:lower:]"
}

# pick the best package list for this device
pick_list() {
  brand="$(detect_brand)"
  for f in "$DATA_DIR/$brand.txt" "$DATA_DIR/generic.txt"; do
    [ -f "$f" ] && { echo "$f"; return; }
  done
  echo ""
}
