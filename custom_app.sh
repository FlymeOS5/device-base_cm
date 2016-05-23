apkBaseName=$1
tempSmaliDir=$2
dir=$(cd "$(dirname "$0")"; pwd)


if [ $1 = "Settings" ];then
	echo ">>> in custom_app $apkBaseName"
	cp $dir/$1/res/xml/mz_device_info_settings.xml $tempSmaliDir/res/xml/mz_device_info_settings.xml
fi
