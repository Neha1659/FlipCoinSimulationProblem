isHead=1;
isTail=2;
headCount=0;
tailCount=0;
for ((i=1; i<=10; i++))
do
 coinFace=$((1+RANDOM%2));
   case $coinFace in
          $isHead)
          headCount=$(($headCount+1))
         
          ;;
          $isTail)
          tailCount=$(($tailCount+1))
 
          ;;
   esac
         
         
done
       
       echo "Head won $headCount times"       
       
       echo "Tail won $tailCount times"

