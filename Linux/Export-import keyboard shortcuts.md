0. Place `spotify-control` inside $HOME/bin/
1. Install dconf-cli
2. Export with `dconf dump /org/cinnamon/desktop/keybindings/ > dconf-settings.conf`
3. Import with `dconf load /org/cinnamon/desktop/keybindings/ < dconf-settings.conf`