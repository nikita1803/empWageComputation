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

#UC-4

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3))

case $empCheck in
     $isFullTime)
         empHrs=8;;
     $isPartTime)
         empHrs=4;;
     *)
         empHrs=0;
esac

salary=$(($empHrs*$empRatePerHr))
echo "salary using switch case " $salary


#UC-5

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkDays=20;
for (( day=1; day<=$numWorkDays; day++))
do
    empCheck=$((RANDOM%3))
    case $empCheck in
      $isFullTime)
              empHrs=8;;
      $isPartTime)
              empHrs=4;;
      *)
              empHrs=0;;
     esac
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($salary*$numWorkDays))

done
echo "wages for a month" $totalSalary


#UC-6

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;
totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
          $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
     ((totalWorkingDays++))
      empCheck=$((RANDOM%3));
      case $empCheck in
          $IS_FULL_TIME)
                  empHrs=8;;
          $IS_PART_TIME)
                    empHrs=4;;
              *)
                empHrs=0;;
      esac
     totalEmpHr=$(( $empHrs + $totalEmpHr))
done
totalSalary=$(( $totalEmpHr * $EMP_RATE_PER_HR  ))
echo "total wages of working hours or days " $totalSalary


# UC-7

totalEmpHr=0;
totalWorkingDays=0;
totalWorkHours=0;
function getWorkingHours()
{
    case $1 in
       $IS_PART_TIME)
             workingHrs=4;;
       $IS_FULL_TIME)
             workingHrs=8;;
       *)
             workingHrs=0;;
     esac
   echo $workingHrs;
}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
          $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
    workHours="$( getWorkingHours $((RANDOM%3)))"
   totalWorkHours=$(( $totalWorkHours + $workHours ))
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));
echo "total salary using function is "$totalSalary


#UC-8

totalEmpHr=0;
totalWorkingDays=0;
totalWorkHours=0;
function getWorkingHours(){
    case $1 in
       $IS_PART_TIME)
              workingHrs=4;;
       $IS_FULL_TIME)
              workingHrs=8;;
       *)
              workingHrs=0;;
     esac
   echo $workingHrs;
}
function getEmpWage()
{
   local workHours=$1

    echo $(($workHours*$EMP_RATE_PER_HR))

}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
          $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
     	workHours="$( getWorkingHours $((RANDOM%3)))"
    	totalWorkHours=$(($totalWorkHours+$workHours))
    	dailywage[$totalWorkingDays]="$(getEmpWage $workHours)"
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));
echo "total wage of employee " $totalSalary
echo  "daily wage is "${dailywage[@]}
