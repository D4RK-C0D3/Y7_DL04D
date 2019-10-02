function yt_dload(){
read -p 'Enter youtube video link : ' link

read -p 'Enter vodeo format  [1]Audio | [2]Video  : ' format

audio=1

video=2

if [ $format == $audio ]
then
	youtube-dl -o "/sdcard/Y7_DL04D/%(title)s.%(ext)s" --extract-audio  --audio-format mp3 $link
elif [ $format == $video ]
then
	youtube-dl -f 18 -o "/sdcard/Y7_DL04D/%(title)s.%(ext)s" $link
else
	echo "ERROR! wrong input..."
fi
}

for i in {1..1000}
do
	read -p 'Enter [1]To Continue Or [2]To exit : ' a
	if [ $a == 1 ]
	then
		yt_dload
	else
		exit
	fi
done
