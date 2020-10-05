xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -merge ~/.Xresources 
~/.local/bin/autostart.sh 

exec dwm

kill 19861 &>/dev/null # Kill autostart.sh
kill 19859 &>/dev/null # Kill bat.sh
kill 19852 &>/dev/null # Kill crypto.sh
kill 19847 &>/dev/null # Kill net.sh
