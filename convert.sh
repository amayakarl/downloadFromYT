while read line
do  
    outfmt=$(echo $line | tr "mp3" "aac")
    ffmpeg -i "$HOMEPATH/music/$line" -strict experimental -c:a aac -b:a 128k "$HOMEPATH/music/$outfmt"
    echo $outfmt >> outaac.log
done < songsList.txt

