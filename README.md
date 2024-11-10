### Export custom gnome shortcuts:
```bash
dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ > custom_shortcuts_backup.conf
```

### Restore custom gnome shortcuts:
```bash
dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < custom_shortcuts_backup.conf
```
