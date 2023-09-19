mystring="a
b
c
d"
IFS="\n"

read -ra myarray <<< "$mystring"
echo ${myarray[0]}
echo ${myarray[1]}
echo ${myarray[2]}
echo ${myarray[3]}


# export regex_command="^\/e2e\ "
# if [[ $comment =~ $regex_command ]]
# then
#   echo "true"
# else
#   echo "false"
# fi

# myArray=("cat" "dog" "mouse" "frog")
# for str in ${myArray[@]}; do
#   echo $str
# done

# mystring="1 2 3 4"
# IFS=" "
# for value in $mystring
# do
#   echo $value
# done
# read -ra myarray <<< "$mystring"
# echo ${myarray[1]}
