# ram.sh — free RAM / trim caches

ram_run() {
  log "Killing background apps..."
  am kill-all && ok "background apps killed" || skip "nothing to kill"
  # cache trim is best-effort; Android version differences are safe to ignore
  cmd activity lru >/dev/null 2>&1 || true
  ok "cache trim attempted"
  echo "    Note: don't overuse — cached apps reload faster than cold starts."
}
