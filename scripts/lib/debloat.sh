# debloat.sh — disable bloatware from data/safe-packages/

debloat_run() {
  list="${1:-}"
  [ -z "$list" ] && list="$(pick_list)"
  [ -z "$list" ] && die "no package list found in data/safe-packages/"

  log "Using package list: $(basename "$list")"
  while IFS= read -r pkg; do
    case "$pkg" in
      ""|\#*) continue ;;
    esac
    if pm list packages 2>/dev/null | grep -q "^package:$pkg$"; then
      if pm disable-user --user 0 "$pkg" >/dev/null 2>&1; then
        ok "disabled: $pkg"
      else
        skip "failed: $pkg"
      fi
    else
      skip "not installed: $pkg"
    fi
  done < "$list"
  echo "    Restore one app anytime: pm enable <package>"
}
