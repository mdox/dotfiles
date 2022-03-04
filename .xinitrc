# vim: set syntax=bash:
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

[ -f "$sysresources" ] && xrdb -merge "$sysresources"
[ -f "$sysmodmap" ] && xmodmap "$sysmodmap"
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ] && xmodmap "$usermodmap"

# xrandr --output LVDS1 --dpi 131 &

dunst &
unclutter &
sxhkd &
dwmblocks &

for program in pulseaudio syncthing; do
    pidof -s "$program" || setsid -f "$program"
done >/dev/null 2>&1

sleep 1s && x-dwmblocks-signal 2 &

ssh-agent dwm

