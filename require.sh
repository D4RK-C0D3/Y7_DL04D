termux-setup-storage -y
pkg install curl -y
pkg install python -y
pkg install ffmpeg -y

cd /sdcard/
mkdir Y7_DL04D
cd 


curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl


chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl