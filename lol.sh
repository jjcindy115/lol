paru -Sy picom-git wezterm rofi acpi acpid acpi_call upower lxappearance-gtk3 \

jq inotify-tools polkit-gnome xdotool xclip gpick ffmpeg blueman redshift \

pipewire pipewire-alsa pipewire-pulse pamixer brightnessctl feh scrot \

mpv mpd mpc mpdris2 python-mutagen ncmpcpp playerctl --needed 
systemctl --user enable mpd.service

systemctl --user start mpd.service 
git clone --recurse-submodules https://github.com/rxyhn/dotfiles.git

cd dotfiles && git submodule update --remote --merge 
cp -r config/* ~/.config/ 
cp -r misc/fonts/* ~/.fonts/

# or to ~/.local/share/fonts

cp -r misc/fonts/* ~/.local/share/fonts/ 
fc-cache -v 
sudo cp -rf misc/themes/Aesthetic-Night/* /usr/share/themes

cp -rf misc/themes/Aesthetic-Night-GTK4/* ~/.config/gtk-4.0
