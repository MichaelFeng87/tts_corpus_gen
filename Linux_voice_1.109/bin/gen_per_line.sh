
echo $2
echo $3
#echo $RANDOM
mod_r=$((RANDOM%12))
#echo $mod_r
speakers=(xiaoyan xiaoyu xiaoqi vils vinn aisjiuxu aisxping aisjying aisjinger aisxmeng ziqi aisduoxu)
spk=${speakers[mod_r]}
echo $spk
./tts_sample $1 $spk 50 50 50 $3 $2
