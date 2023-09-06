comment="/e2e dev3"

# Substring
command=${comment:0:5} 

if [[ $command == "/e2e " ]]
then
  # Native variable: Internal Field Separator
  IFS=" "

  # Split string by space using IFS
  read -ra comment_array <<< "$comment"

  environment=${comment_array[1]}
  echo ${environment}
else
  echo "false"
fi

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
