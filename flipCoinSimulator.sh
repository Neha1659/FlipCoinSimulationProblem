isHead=1;
isTail=2;
headCount=0;
tailCount=0;
for ((i=1; i<=7; i++))
do
  for ((j=1; j<=6;j++))
  do
   coinFace=$((1+RANDOM%2))
    case $coinFace in
          $isHead)
          headCount=$(($headCount+1))
          ;;
          $isTail)
          tailCount=$(($tailCount+1))
          ;;
    esac
  done        
done       
       echo "Head won $headCount times"       
       echo "Tail won $tailCount times"

       if [ $headCount -gt $tailCount ]
       then 
            echo "Head won by $(($headCount-$tailCount)) times"
       elif [ $headCount -lt $tailCount ]
       then
            echo "Tail won by $(($tailCount-$headCount)) times"
       else
            echo "Head and Tail won equal times"
       fi
