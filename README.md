## D1BG's laptop dotfiles
This repo contains my Linux dots as of 24.06.2025.
It has both Niri and Hyprland dots (I dont garantee that the Hyprland dots are in a working state since i switched to Niri and I havent tested them).

## Instructions
- Everything in `config` should be pasted in `~/.config`.
- Eeverything in `local` should be pasted in `~/.local`.
- `zshrc` should replace `~/.zshrc` ([Oh My Zsh](https://ohmyz.sh/) is required for everything to work semi-propperly).
- `etc` contains `cmdline.d` (useful for UKIs), `paru.conf` with [my AUR repo](https://github.com/d1bg/pkgbuilds) and `udev` rules for my laptop.

### To-Do:
- Make a [QuickShells](https://quickshell.outfoxxed.me/) config to replace waybar, rofi, dunst and wlogout.
- Make a script to automate the install.
- Include omzsh plugins / install it with the above mentioned script.
- Add my desktop dots and use the above mentioned script to install them depending on hostname.
- idk add more dots lol

### Special Thanks
- [heather's dotfiles](https://github.com/heather7283/dotfiles) - I yoinked a lot of scripts.
- [heather's frzscr](https://github.com/heather7283/frzscr) - Used in my screenshot script.
