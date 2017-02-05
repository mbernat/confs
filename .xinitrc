. ~/confs/.xinitrc-globals

export GDK_USE_XFT=1
export QT_XFT=true

xset +fp /usr/share/fonts/local
xset fp rehash
xset -b

eval $(ssh-agent)

exec xmonad &
pid=$!

#/usr/bin/emacs --daemon
urxvt &
firefox &
xmobar ~/confs/xmobar.config &
parcellite &
stalonetray -c ~/confs/stalonetrayrc &

pulseaudio --start
pactl load-module module-equalizer-sink
pactl load-module module-dbus-protocol

wait $pid
