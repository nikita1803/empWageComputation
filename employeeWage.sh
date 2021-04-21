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
     echo "Daily employee wage" $salary
else
     salary=0;
fi

#UC-3

isPartime=1
isFulltime=2
empRatePerHr=20
randomCheck1=$((RANDOM%3))

if [ $isPartime -eq $randomCheck1 ]
then
   empHrs=4;
elif [ $isFulltime -eq $randomCheck1 ]
then
   empHrs=8;
else
   empHrs=0;
   echo "no salary"
fi
salary=$(($empRatePerHr*$empHrs))

echo "part time or full time salary of employee " $salary
