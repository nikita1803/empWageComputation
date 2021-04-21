echo "welcome"
#UC-1
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is present" ;
else
	echo "Employee is absent" ;
fi
#UC-2

if [ $isPresent -eq $randomCheck ]
then
     empRatePerday=20;
     empHrs=8;
     salary=$(($empRatePerday*$empHrs))
     echo "Daily employee wage".$salary
else
     salary=0;
fi
