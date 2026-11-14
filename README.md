# Omarchy Feishin

Auto-theming support for feishin on omarchy


## Installation

copy or symlink the hook and theme template 

```
cp "./themed/feishin.json.tpl" "$OMARCHY_THEMED_DIR/"
cp "./hooks/feishin.sh" "$OMARCHY_HOOKS_DIR/feishin.sh"
```

```
ln -s "$PWD/themed/feishin.json.tpl" "$OMARCHY_THEMED_DIR/"
ln -s "$PWD/hooks/feishin.sh" "$OMARCHY_HOOKS_DIR/feishin.sh"
```

This will install the theme template to `~/.config/omarchy/themed` then install a hook to `~/.config/omarchy/hooks/theme-set.d/` to update to replace `omarchy.json` theme in Feishin.

## Usage

To use the theme in Feishin go to settings > theme and select "Omarchy"
