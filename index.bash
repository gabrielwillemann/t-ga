COMMENT_TEXT="/e2e skip"

IFS=" "
read -ra COMMENT_ARRAY <<< "$COMMENT_TEXT"

COMMAND=${COMMENT_ARRAY[0]} 
PARAMETER=${COMMENT_ARRAY[1]}

if [[ $COMMAND == "/e2e" && $PARAMETER != "" ]]
then
  if [[ $PARAMETER == "skip" ]]
  then
    echo "ACTION=SKIP_TEST" >> $GITHUB_OUTPUT
  else
    echo "ACTION=RUN_TEST" >> $GITHUB_OUTPUT
    echo "ENVIRONMENT=${PARAMETER}" >> $GITHUB_OUTPUT
  fi
else
  echo "ACTION=NOTHING" >> $GITHUB_OUTPUT
fi

# comment="/e2e dev3"
# command=${comment:0:5} 
# if [[ $command == "/e2e " ]]
# then
#   IFS=" "
#   read -ra comment_array <<< "$comment"
#   environment=${comment_array[1]}
#   echo ${environment}
# else
#   echo "false"
# fi



