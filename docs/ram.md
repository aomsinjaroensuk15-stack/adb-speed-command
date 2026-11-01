RAM cleanup

What it does

```sh
am kill-all          # kills background apps (not foreground)
cmd activity lru     # best-effort cache trim (Android 11+)
```

Important
- Do NOT run this constantly. Android keeps apps cached on purpose;
  cold starts use more battery than cached resumes.
- Good moments: before a game, if phone feels sluggish after heavy multitasking.
- 8GB+ RAM phones rarely need this.
