#!/bin/sh
op7=1
while [ "$op7" > "0" ]
do
if [ "$op7" = "1" ]
then
echo enter you option
echo 1.scanning
echo 2.scripts
read op2
while [ "$op2" > "0" ]
do
if [ "$op2" = "1" ]
then

echo "netdiscover running...."
sleep 5s
`netdiscover -r 192.168.0.0/24 -PN >netdiscover.txt`

cat netdiscover.txt | awk '{print $1}'

read -p "Enter the ip: " ip

echo what scan do you want?
echo 1.synscan
echo 2.ackscan
echo 3.finscan
echo 4.xmasscan
echo 5.tcpscan
echo 6.nullscan
echo 7.osscan

read op1

while [ "$op1" > "0" ]
do

if [ "$op1" = "1" ]
then
  	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "enter the port: " p1
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
			then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sS -oN scan.txt -v -p$p1 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			nmap -sS -v -p$p1 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	
	else
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sS -oN scan.txt -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sS -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "2" ]
then
	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			read -p "enter the port: " p2
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sA -oN scan.txt -v -p$p2 $ip
		       	sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sA -v -p$p2 $ip
		       	sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	else
		
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sA -oN scan.txt  -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else 
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sA -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "3" ]
then
	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "enter the port: " p3
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sF -oN scan.txt  -v -p$p3 $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sF -v -p$p3 $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
			
	else
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sF -oN scan.txt -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sF -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "4" ]
then
	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "enter the port: " p4
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sX -oN scan.txt -v -p$p4 $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sX -v -p$p4 $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi	
	else
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sX -oN scan.txt  -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sX -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "5" ]
then
  	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "enter the port: " p5
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
			then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sT -oN scan.txt -v -p$p5 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			nmap -sT -v -p$p5 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	
	else
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sT -oN scan.txt -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sT -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "6" ]
then
  	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "enter the port: " p6
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
			then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sN -oN scan.txt -v -p$p6 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			nmap -sN -v -p$p6 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	
	else
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sN -oN scan.txt -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -sN -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "7" ]
then
  	read -p "do you want a specfic port? " y
	if [ "$y" = "yes" ] || [ "$y" = "y" ]
	then
		read -p "enter the port: " p7
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
			then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -O -oN scan.txt -v -p$p7 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			nmap -O -v -p$p7 $ip	
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	
	else
		read -p "do you want the output in a file? " w2
		if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
		then
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -O -oN scan.txt -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		else
			gnome-terminal -e "tcpdump -v dst host $ip"
			nmap -O -v $ip
			sleep 10s
			pid=$(ps -e | pgrep tcpdump)    
			kill -2 $pid
			op1=66
		fi
	fi
elif [ "$op1" = "66" ]
then
	read -p "do you wanna continue? " w1
	if [ "$w1" = "y" ] || [ "$w1" = "yes" ]
	then
		echo 1.synscan
		echo 2.ackscan
		echo 3.finscan
		echo 4.xmasscan
		echo 5.tcpscan
		echo 6.nullscan
		echo 7.osscan
		read -p "enter the option " op1
	else
		echo "-------------thankyou-------------"
		unset op2
		break
	fi
	
else

	echo "invalid option .... try again!"
	read -p "enter the option " op1
fi

done 

elif [ "$op2" = "2" ]
then
	op4=1
	echo "netdiscover running...."
	sleep 5s
	`netdiscover -r 192.168.0.0/24 -PN >netdiscover.txt`

	cat netdiscover.txt | awk '{print $1}'
	
	
	read -p "Enter the ip: " ip

	cat nmapls.txt

	read -p "enter the name: " sp1

	sp2=`cat nmapls.txt | grep $sp1`
	
	while [ "$op4" > "0" ]
	do
	if [ "$op4" = "1" ]
	then

		if [ "$sp1" = "$sp2" ]
		then
		read -p "do you want a specfic port? " y
			if [ "$y" = "yes" ] || [ "$y" = "y" ]
			then
				read -p "enter the port: " p1
				read -p "do you want the output in a file? " w2
				if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
				then
					gnome-terminal -e "tcpdump -v dst host $ip"
					nmap --script=$sp2 -oN scan.txt -v -p$p1 $ip	
					sleep 10s
					pid=$(ps -e | pgrep tcpdump)    
					kill -2 $pid
					op4=2
				else
					nmap --script=$sp2 -v -p$p1 $ip	
					sleep 10s
					pid=$(ps -e | pgrep tcpdump)    
					kill -2 $pid
					op4=2
				fi
			
			else
				read -p "do you want the output in a file? " w2
				if [ "$w2" = "y" ] || [ "$w2" = "yes" ]
				then
					gnome-terminal -e "tcpdump -v dst host $ip"
					nmap -O --script=$sp2 -oN scan.txt -v $ip
					sleep 10s
					pid=$(ps -e | pgrep tcpdump)    
					kill -2 $pid
					op4=2
				else
					gnome-terminal -e "tcpdump -v dst host $ip"
					nmap -O --script=$sp2 -v $ip
					sleep 10s
					pid=$(ps -e | pgrep tcpdump)    
					kill -2 $pid
					op4=2
				fi
			fi 
		else
	
			echo "invalid script name... try again!"
			cat nmapls.txt
		
			read -p "enter the name: " sp1
		
			sp2=`cat nmapls.txt | grep $sp1`
			
			op4=1
		fi
		
	elif [ "$op4" = "2" ]
	then
		read -p "do you wanna continue? " w1
		if [ "$w1" = "y" ] || [ "$w1" = "yes" ]
		then
			cat nmapls.txt
		
			read -p "enter the name: " sp1
		
			sp2=`cat nmapls.txt | grep $sp1`
			
			op4=1
		else
			echo "-------------thankyou-------------"
			unset op2
			break
		fi
	else
		op4=1
	fi
		
done	
else

	echo "invalid option .... try again!"
	read -p "enter the option " op2
fi


done 	
fi
done

	

		
	

 

