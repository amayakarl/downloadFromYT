while read line
do
    ./youtube-dl.exe  "$line" --extract-audio --audio-format mp3 --output "$HOMEPATH/music/%(title)s.mp3"
    echo "[parsed] $line" >> ouput.log
done < "download-list.txt"