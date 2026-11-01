# anim.sh — animation speed control

anim_run() {
  mode="${1:-fast}"
  log "Animations: $mode"
  case "$mode" in
    off)   s1=0;   s2=0;   s3=0 ;;
    fast)  s1=0.5; s2=0.5; s3=0.5 ;;
    reset) s1=1;   s2=1;   s3=1 ;;
  esac
  put window_animation_scale "$s1"
  put transition_animation_scale "$s2"
  put animator_duration_scale "$s3"
}
