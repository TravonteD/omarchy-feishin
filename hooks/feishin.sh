#!/usr/bin/env bash
# omarchy:summary=Sync the Omarchy theme into Feishin so it hot-reloads
# Feishin's fs.watch only sees changes to files inside its Themes folder, so a
# symlink to Omarchy's state file is never noticed when the theme swaps behind
# it. Copy the rendered file in as a real file; the atomic rename fires the
# watcher and the running app applies the theme without a restart.

SRC="$HOME/.local/state/omarchy/current/theme/feishin.json"
THEMES_DIR="$HOME/.config/feishin/Themes"
DEST="$THEMES_DIR/omarchy.json"

mkdir -p "$THEMES_DIR"

if test -f $SRC
then
  TMP=$(mktemp "$THEMES_DIR/.omarchy.json.XXXXXX")
  cp "$SRC" "$TMP"
  mv "$TMP" "$DEST"
else
  rm -f "$TMP" "$DEST" 2>/dev/null || true
fi
