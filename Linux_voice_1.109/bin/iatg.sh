
# iatg.sh folder outputfolder

export LD_LIBRARY_PATH=$(pwd)/../libs/x64/

cnt=0

mkdir "$2"

for f in $1/*.wav; do
echo "$f",$cnt
touch "$f.trn"
./iat_sample "$f" 16000 "56f37a90" "$f.trn"

cnt=$[cnt+1]

mv "$f" "$2"
mv "$f.trn" "$2"

done

