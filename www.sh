#!/bin/bash
rand=$(($RANDOM%100))
echo $rand

for ((dig=1;dig<101;dig++))
do
	case $(((($rand > $dig) * 2) + ($rand < $dig) + 0)) in
	0)
		echo "<title>$dig.</title><body>raven!</body>">public_html/$dig.html
		;;
	1)	
		echo "<title>$dig.</title><body>number mense!</body>">public_html/$dig.html
		;;
	2)	
		echo "<title>$dig.</title><body>number bolse!</body>">public_html/$dig.html
		;;
	esac
done

