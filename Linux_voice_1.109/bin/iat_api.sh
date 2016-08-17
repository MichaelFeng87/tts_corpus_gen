
# iat_api.sh  xxx.wav  result.trn

export LD_LIBRARY_PATH=$(pwd)/../libs/x64/


fi=$1
fo=$2

./iat_sample "$fi" 16000 "56f37a90" "$fo" > /dev/null
cat $fo


