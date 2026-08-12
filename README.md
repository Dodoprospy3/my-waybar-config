# My Waybar Configurations (Dotfiles)
By Dodoprospy3

---
![Waybar Preview](assets/1.png)
![Waybar Preview](assets/2.png)
![Waybar Preview](assets/3.png)

---

> **Warning:** This configuration requires Hyprland 0.56.X and may not work correctly on other versions. The author is not responsible for any problems caused by using this configuration.

---

## Requirements
- hyprland 0.56.X
- git version 2.55.0 or higher
- Waybar v0.15.0 or higher

---

## How to set up

First, run this command to go to the waybar Directory
```bash
cd ~/.config/waybar/
```

If it doesn't exist create it yourself
```bash
mkdir ~/.config/waybar/
```

Then go into it again
```bash
cd ~/.config/waybar
```

Then run this command to clone the repo to your directory

```bash
git clone https://github.com/Dodoprospy3/my-waybar-config.git .
```
Now if you run ```waybar``` in your terminal, it will show up. 
Then close your terminal or press ```Ctrl+c```, don't worry I know that your beatiful waybar that you just stole from me is gone, 
Then go into your `hypr` Directory

```bash
cd ~/.config/hypr/
```

then run ```ls```
you should see `hyprland.lua`

Use your preferred text editor to edit `hyprland.lua`

> **WARNING**: If your preferred text editor is Ema*s, reconsider your life choices.
> 
>Vim/Neovim users are welcome. Emacs users will be judged. Nano users are beyond my ability to comprehend.

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

Finally, log out and log back in, and... **BOOM**! you have your (mine actually) waybar!

---

If you encounter any problems or difficulties, don't hesitate to ask me for help. Have a nice Waybar!
