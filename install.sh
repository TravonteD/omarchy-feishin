#!/usr/bin/env bash

OMARCHY_HOOKS_DIR="$HOME/.config/omarchy/hooks"
if ! test -d "$OMARCHY_HOOKS_DIR"
then
  echo "The omarchy hooks directory is missing."
  exit 1
fi

OMARCHY_THEMED_DIR="$HOME/.config/omarchy/themed"
if ! test -d "$OMARCHY_THEMED_DIR"
then
  echo "The omarchy themed directory is missing."
  exit 1
fi

THEME_DIR="$HOME/.config/feishin/Themes"
if ! test -d "$THEME_DIR"
then
  echo "Unable to locate feishin theme directory. You may need to run feishin once to create it."
  exit 1
fi

cp "./themed/feishin.json.tpl" "$OMARCHY_THEMED_DIR/feishin.json.tpl"
cp "./hooks/feishin.sh" "$OMARCHY_HOOKS_DIR/feishin.sh"
