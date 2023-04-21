xbindkeys

setxkbmap -option caps:escape
setxkbmap -option escape:caps

loadkeys uk

numlockx &

compton --no-fading-openclose &

while xsetroot -name " BAT: `cat /sys/class/power_supply/BAT0/capacity`% | CPU: `top -b -n 1 | grep Cpu | awk '{print 100-$8}'`% | MF: `free -h --giga | grep Mem | awk '{print $7}'` | DF: `df -H --total | grep sda2 | awk '{print $4}'` | `date +%H:%M:%S` `date +%d/%m/%y`"
do
	sleep 1
done &

mons -s

xwallpaper --focus "/home/$USER/media/pics/papes/$(ls /home/$USER/media/pics/papes/ | shuf -n 1)"

export _JAVA_AWT_WM_NONREPARENTING=1

./.startdwm

