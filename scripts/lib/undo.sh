# undo.sh — restore everything to defaults

undo_run() {
  log "Restoring defaults..."
  put window_animation_scale 1
  put transition_animation_scale 1
  put animator_duration_scale 1
  put background_process_limit standard
  put wifi_scan_throttle_enabled 1
  settings delete global force_gpu_rendering >/dev/null 2>&1 || true
  ok "defaults restored"
  echo "    Re-enable debloated apps: pm enable <package>"
}
