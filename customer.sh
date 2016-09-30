ans="y"
while [ "$ans" = "y" ];do
clear
echo "WELCOME TO CUSTOMER MENU :"
echo "1.CREATE    : "
echo "2.DISPLAY   : "
echo "3.MODIFY    : "
echo "4.DELETE    : "
echo "5.SEARCH    : "
echo "6.EXIT      : "
echo "ENTER YOUR CHOICE : "
read ch
case $ch in
1)
clear
cat >> cust.txt
;;
2) 
echo "ENTER YOUR PHONE NO. :"
read phone
if grep  "$phone" cust.txt 
then 
echo "RECORD FOUND "
else
echo "RECORD NOT FOUND "
fi
;;
  3)
 clear
 anss="y"
 while [ "$anss" = "y" ];do
 clear
 echo "WELCOME TO MODIFY MENU:"
 echo "1.SOURCE    : "
 echo "2.DESTINATION  : "
 echo "3.MOBILE NO.    : "
 echo "ENTER YOUR CHOICE :"
 read choice
 case $choice in
 
  1)
 echo "ENTER THE OLD SOURCE PLACE :"
 read osource
 if grep -i "$osource" cust.txt 
 then 
 echo "RECORD FOUND "
 else
 echo "RECORD NOT FOUND "
 break
 fi

 echo "ENTER THE NEW SOURCE PLACE :"
 read nsource
 clear
 sed -e "s/$osource/$nsource/" cust.txt
 clear
 echo "RECORD MODIFIED .."
 ;;

  2)
 echo "ENTER THE OLD DESTINATION PLACE :"
 read odest
 if grep -i "$odest" cust.txt 
 then 
 echo "RECORD FOUND "
 else
 echo "RECORD NOT FOUND "
 break
 fi
 
 echo "ENTER THE NEW SOURCE PLACE :"
 read ndest
 clear
 sed -e "s/$odest/$ndest/" cust.txt
 clear
 echo "RECORD MODIFIED .."
 ;;

  3)
 echo "ENTER THE OLD PHONE NO. :"
 read oph
 if grep  "$oph" cust.txt 
 then 
 echo "RECORD FOUND "
 else
 echo "RECORD NOT FOUND "
 break
 fi
 echo "ENTER THE NEW PHONE NO. :"
 read nph
 clear
 sed -e "s/$oph/$nph/" cust.txt
 clear
echo "RECORD MODIFIED .."
;;

 *)echo " SORRY YOU HAVE ENTERED A WRONG CHOICE !! ENTER YOUR CHOICE AGAIN :"

esac

echo "WANT TO SEE THE MODIFY MENU AGAIN ??? PRESS Y !!! "
read option

case $option in
  y*|Y*) anss=y;;
 n*|N*) anss=n;;
 *) echo "PLEASE ENTER Y OR N TO CONTINUE"
esac
done
;;

4)
clear
echo "ENTER THE PHONE NO. :"
read ph
if sed  "/$ph/d" cust.txt 
then 
echo "RECORD DELETED "
else
echo "RECORD NOT FOUND "
fi
;;

5)
clear
echo " ENTER THE PHONE NO. TO SEARCH A RECORD "
read ph
if grep "$ph" cust.txt 
then 
echo "RECORD FOUND "
else
echo "RECORD NOT FOUND "
fi
;;

6)
echo "EXITTING...."
exit
;;

*)echo " SORRY YOU HAVE ENTERED A WRONG CHOICE !! ENTER YOUR CHOICE AGAIN :"

esac

echo "WANT TO SEE THE CUSTOMER MENU AGAIN ??? PRESS Y !!! "
read opt
case $opt in
y*|Y*) ans=y;;
n*|N*) ans=n;;
*) echo "PLEASE ENTER Y OR N TO CONTINUE"
esac
done


