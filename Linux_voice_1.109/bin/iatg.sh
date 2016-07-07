
# gen.sh  appid inputfile wav-prefix

export LD_LIBRARY_PATH=$(pwd)/../libs/x64/

cnt=0

for f in /home/dgk/changshacuto2w/*; do
echo "$f",$cnt
touch "$f.trn"
./iat_sample "$f" 16000 "56f37a90" "$f.trn"

cnt=$[cnt+1]

mv "$f" /home/dgk/changshacuto2w/doned/
mv "$f.trn" /home/dgk/changshacuto2w/doned/

done

