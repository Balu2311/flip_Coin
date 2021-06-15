#!/bin/bash -x
echo " filp coin simulator"
isTie=0
hcount=0
tcount=0
diff=99
res=""
function headTailGenerate(){
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
    		hcount=$(($hcount+1))
	else
      		tcount=$(($tcount+1))
	fi
}
