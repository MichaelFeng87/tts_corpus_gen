
# gen.sh  inputfile wav-prefix

export LD_LIBRARY_PATH=$(pwd)/../../libs/x64/

cd ..
cnt=0
cat tts_corpus_a/$1 | while read line
do 
    #echo $line
    
    fn=$2_$cnt.wav
    ./gen_per_line.sh "$line"  $fn



    cnt=$[cnt+1]
done
