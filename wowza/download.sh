for var in `sh pollsa.sh | tr -s " " "#" | cut -f2 -d "#" | sed '1,4d' | sed '$d'`
do
result="azure storage blob download videos "$var" /usr/local/WowzaStreamingEngine/content/"$var
echo $result
done
