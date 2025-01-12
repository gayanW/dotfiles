#!/bin/bash

# Inform the user about Workspace Matrix extension
echo "To enable grid workspaces, you might need an extension like Workspace Matrix. Ensure it is installed and enabled.";

set_shortcuts() {
    # Set custom keybindings for workspace navigation
    echo "Setting custom keybindings for workspace navigation"
    set -x
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>k']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>j']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>h']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>l']"

    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>k']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>j']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>h']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>l']"
    set +x
}

# Ask user if they want to set custom keybindings
echo "Do you want to set vim keybindings for workspace navigation? (y/n)"; read -r set_shortcuts_choice
if [[ "$set_shortcuts_choice" == "y" || "$set_shortcuts_choice" == "Y" ]]; then
    set_shortcuts
else
    echo "Skipping custom keybindings setup..."
fi

# Restart GNOME Shell to apply changes
echo "Restarting GNOME Shell..."
echo "Press Alt + F2, type 'r', and press Enter to restart GNOME Shell manually if the changes do not take effect."
