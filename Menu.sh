while true
do
echo "*-*-*-*What you want to do*-*-*-*"
echo "1) Contents of /etc/passwd"
echo "2) List of users who have recently login"
echo "3) Print present working directory"
echo "4) Exit"
echo "Enter your choice" 
read ch
echo ""
case $ch in
1)
echo "Contents of /etc/passwd"
cat /etc/passwd
echo ""
;;
2)
echo "List of users who have recently login"
last
echo ""
;;
3)
echo "Print present working directory"
pwd
echo ""
;;
4)
 echo "Program close"
break
;;
*)
echo "Wrong choice please enter number between 1-4"
echo ""
esac
done
