foo=`cat $1`
j=0
for (( i=0; i<${#foo}; i++ )); do
    if [[ ${foo:$i:1} == *$'\r'* ]]; then
        echo "${foo:$i:1}"
        echo $i
        #w=$(($i - 1))
        #printf '%s\n' "${foo:$j:$w}" | tr '\n' ' '
        #j=$(($i + 1))
        #echo $j
        #echo -n $w
    fi
done