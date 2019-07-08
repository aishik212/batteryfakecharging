adb shell dumpsys battery unplug
adb shell dumpsys battery reset
adb shell dumpsys battery set level 2
echo "Do you want to continue?"
read var
if [ "$var" == "y" ] || [ "$var" == "Y" ]  || [ "$var" == "" ] || [ "$var" == " " ]
then
	for i in {2..100}
	do
		echo $i
		adb shell dumpsys battery set level $i
		sleep $1
	done
fi