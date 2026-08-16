# dotfiles

Personal dotfiles for my Hyprland desktop: Hyprland (hypr), Waybar, Rofi, Alacritty, and Neovim (as a git submodule).

## Install

```bash
# 1. Clone into ~/.config (back up anything existing first)
git clone git@github.com-personal:ujsquared/dotfiles.git ~/.config

# 2. Pull the nvim submodule
git -C ~/.config submodule update --init

# 3. Reload Hyprland (or log out/in)
hyprctl reload
```

Hyprland sources everything from `~/.config/hypr`, Waybar/Rofi read their configs from the same repo.
Works on nvim v0.11.4 and hyprland 0.55.4, Ideapad Gaming 3 15ARH05, external monitor. 
Picks wallpapers ~/Pictures/wallpapers ig. Keybindings are fairly simple and nothing out of the blue.

## Notes

- Repo is private; keep it that way (contains personal paths).
- To update: `git -C ~/.config pull` + `git -C ~/.config submodule update --remote`.

ujsquared@gmail.com
