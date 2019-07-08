adb shell dumpsys battery set level 100
adb shell dumpsys battery unplug;adb shell dumpsys battery set status 3
echo "Do you want to continue?"
read var
if [ "$var" == "y" ] || [ "$var" == "Y" ]  || [ "$var" == "" ] || [ "$var" == " " ]
then
	for i in {100..1}
	do
		echo $i
		adb shell dumpsys battery set level $i
		sleep $1
	done
fi