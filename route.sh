ans="y"
while [ "$ans" = "y" ];do
clear
echo "WELCOME TO ROUTE INFORMATION MENU :"
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
cat >> sd.txt
;;
2)
clear 
echo "THE RECORDS ARE :"
clear
cat sd.txt
;;
 3)
clear
anss="y"
while [ "$anss" = "y" ];do
clear
echo "WELCOME TO MODIFY MENU:"
echo "1.SOURCE    : "
echo "2.DESTINATION  : "
echo "3.ROUTE ID    : "
echo "ENTER YOUR CHOICE :"
read choice
case $choice in
1)
echo "ENTER THE OLD SOURCE PLACE :"
read osource
if grep -i "$osource" sd.txt 
then 
echo "RECORD FOUND "
else
echo "RECORD NOT FOUND "
break
fi

echo "ENTER THE NEW SOURCE PLACE :"
read nsource
clear
sed -e "s/$osource/$nsource/" sd.txt
clear
echo "RECORD MODIFIED .."
;;
2)
echo "ENTER THE OLD DESTINATION PLACE :"
read odest
if grep -i "$odest" sd.txt 
then 
echo "RECORD FOUND "
else
echo "RECORD NOT FOUND "
break
fi

echo "ENTER THE NEW SOURCE PLACE :"
read ndest
clear
sed -e "s/$odest/$ndest/" sd.txt
clear
echo "RECORD MODIFIED .."
;;

3)
echo "ENTER THE OLD ROUTE ID :"
read orid
if grep -i "$orid" sd.txt 
then 
echo "RECORD FOUND "
else
echo "RECORD NOT FOUND "
break
fi
echo "ENTER THE NEW ROUTE ID :"
read nrid
clear
sed -e "s/$orid/$nrid/" sd.txt
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
echo " ENTER THE ROUTE ID TO DELETE A RECORD "
read rrid
if sed  "/$rrid/d" sd.txt 
then 
echo "RECORD DELETED "
else
echo "RECORD NOT FOUND "
fi
;;

5)
clear
echo " ENTER THE ROUTE ID TO SEARCH A RECORD "
read rid
if grep -i "$rid" sd.txt 
then 
echo "RECORD FOUND "
else
echo "RECORD NOT FOUND "
fi
;;

6) 
echo "EXITTING......"
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















