if [ $# -eq 0 ]
then
	echo "No Params Given"
	exit 1
fi

if [ $1 -eq 1 ]
then
	sudo uhubctl -l 1-1 -p 2 -a 1
	gpio -g mode 24 out
	gpio -g write 24 1
	echo "gpio 24 set 1"
elif [ $1 -eq 0 ]
then
	sudo uhubctl -l 1-1 -p 2 -a 0
	gpio -g mode 24 out
        gpio -g write 24 0
	echo "gpio 24 set 0"
else
	echo "wrong param"
fi

