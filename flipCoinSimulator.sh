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

function flipCoin(){
while [ 1 ]
do
	if [ $isTie -eq 1 ]
	then
		diff=$(($hcount - $tcount))
		if [ $diff -eq 2 ] || [ $diff -eq -2 ]
		then
			estimateResult $hcount $tcount $diff
		else
			headTailGenerate
			isTie=0
		fi
	elif [ $isTie -eq 0 ]
	then
		if [ $hcount -eq 21 -o $tcount -eq 21 ]
		then
			diff=$(($hcount - $tcount))
			estimateResult $hcount $tcount $diff
		else
			headTailGenerate
		fi
	else
		break
	fi
done
}

#flipCoin
echo $res
