
# gen.sh  appid inputfile wav-prefix

export LD_LIBRARY_PATH=$(pwd)/../libs/x64/

cnt=0
cat $2 | while read line
do 
    #echo $line
    
    fn=$3_$cnt.wav
    ./gen_per_line.sh $1 "$line"  $fn



    cnt=$[cnt+1]
done
