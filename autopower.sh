#!/bin/sh
ON=0
case $1 in
	1|on)
		ON=1
	;;

	0|off)
		ON=0
	;;

	*)
		echo "$0 [on|off]"
		exit 0
	;;
esac

[ $ON -eq 1 ] && echo AutoPower: On || echo Autopower: Off

# Export GPIO
# AUTO_ON_D
echo 153 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio153/direction
# AUTO_EN_CLK
echo 154 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio154/direction

echo $ON > /sys/class/gpio/gpio153/value
echo 0 > /sys/class/gpio/gpio154/value
sleep 0.1
echo 1 > /sys/class/gpio/gpio154/value
sleep 0.1
echo 0 > /sys/class/gpio/gpio154/value

echo 153 > /sys/class/gpio/unexport
echo 154 > /sys/class/gpio/unexport

