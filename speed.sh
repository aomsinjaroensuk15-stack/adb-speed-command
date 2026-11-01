#!/system/bin/sh
# speed.sh — all-in-one Android speed toolkit (no root, needs Shizuku/aShell)
# Usage: sh speed.sh [all|anim|ram|debloat|undo]
#   all      — animations + ram + debloat (default list or $2 as custom list)
#   anim     — animation speed (optional $2: off|fast|reset, default fast)
#   ram      — kill background apps, trim caches
#   debloat  — disable bloatware (optional $2: path to custom list)
#   undo     — restore all defaults

DIR="$(cd "$(dirname "$0")" && pwd)"
LIB="$DIR/lib"
DATA_DIR="$DIR/../data/safe-packages"

# ---- auto cleanup: nothing should survive a run ----
TMP_FILES=""
cleanup() {
  [ -n "$TMP_FILES" ] && rm -f $TMP_FILES
  exit "${1:-0}"
}
trap "cleanup" EXIT INT TERM

[ -f "$LIB/common.sh" ] || { echo "[!] missing lib/common.sh"; exit 1; }
. "$LIB/common.sh"
. "$LIB/anim.sh"
. "$LIB/ram.sh"
. "$LIB/debloat.sh"
. "$LIB/undo.sh"

case "$1" in
  all)     anim_run "${2:-fast}"; ram_run; debloat_run "$3" ;;
  anim)    anim_run "${2:-fast}" ;;
  ram)     ram_run ;;
  debloat) debloat_run "$2" ;;
  undo)    undo_run ;;
  *)
    echo "Usage: sh speed.sh [all|anim|ram|debloat|undo]"
    exit 1
    ;;
esac

echo "[+] Done."
