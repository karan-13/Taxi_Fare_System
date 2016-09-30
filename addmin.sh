
ans="y"
while [ "$ans" = "y" ];do
echo "WELCOME TO ADMIN MENU :"
echo "1. ROUTE INFO     : "
echo "2. DRIVER INFO    :  "
echo "ENTER YOUR CHOICE : "
read ch
case $ch in
1) clear
echo "IN THE ROUTE INFO "
bash route.sh
;;
2)
clear 
echo "IN TH DRIVER INFO"
;;
3)
echo "EXITTING"
exit
;;
*) echo " SORRY YOU HAVE ENTERED A WRONG CHOICE !! ENTER YOUR CHOICE AGAIN :"
esac
echo "WANT TO SEE THE ROUTE INFO MENU AGAIN ??? PRESS Y !!! "
read opt
case $opt in
y*|Y*) ans=y;;
n*|N*) ans=n;;
*) echo "PLEASE ENTER Y OR N TO CONTINUE"
esac
done

