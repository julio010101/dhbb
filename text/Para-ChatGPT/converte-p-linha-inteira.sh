#! /usr/bin/bash
# primeiro - remover '\r\n' CR e LF

# cat $1 | tr '\r\n' ' ' > pre-chatgpt.txt
# for i in `ls -1 *.text`; do
#     cat $i | tr '\r\n' ' ' > pre-chatgpt.txt
# done

# segundo - só encontrar o '.' e quebrar

foo=`cat pre-chatgpt.txt`
j=0
for (( i=0; i<${#foo}; i++ )); do
    if [[ ${foo:$i:1} == "." ]]; then
        echo -n ${foo:$j:$i}
        echo "j = $j, i = $i"
        let "j = i + 1"
        printf "\n"
        echo "${foo:$i:1}"
        #echo -n $w
    fi
done