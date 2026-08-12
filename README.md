# My Waybar Configurations (Dotfiles)
By Dodoprospy3

---

### this configuration must be used in hyprland 0.56.X or it may not work or malfunction and the author is not responsible for any problem

---

## Requirements
- hyprland 0.56.X
- git version 2.55.0 or higher
- Waybar v0.15.0 or higher

---

## How to set up

first, run this command to go to the waybar Directory
```bash
cd ~/.config/waybar/
```

if it doesn't exist create it yourself
```bash
mkdir ~/.config/waybar/
```

then go into it again
```bash
cd ~/.config/waybar
```

then run this command to clone the repo to your directory

```bash
git clone https://github.com/Dodoprospy3/my-waybar-config.git .
```
now if you run ```waybar``` in your terminal it will show up, 
then close your terminal or press ```Ctrl+c```, don't worry I kow that your beatiful waybar that you just stole from me is gone, 
then go into your hyprland.lua Directory

```bash
cd ~/.config/hypr/
```

then run ```ls```
you should see hyprland.lua

Use your preferred text editor to edit `hyprland.lua`

> WARNING: If your preferred text editor is Emacs, reconsider your life choices.
> 
> Vim/Neovim users are welcome. Emacs users will be judged.

```bash 
<YOUR-TEXT-EDITOR> hyprland.lua
``` 
then anywhere in that file add

```lua
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar &")
end)
```

then save and exit.

