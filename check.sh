result=0

while IFS= read -r line
do
  grep -q -F "$line" $2
  ret=$?
  if [ $ret -ne 0 ]; then
     result=$ret
     echo "$line"
     break
  fi
done < "$1"

if [ $result -eq 0 ]; then
    echo "ok"
else
  echo "ko"
fi
exit $result
