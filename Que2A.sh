
echo "Enter no"
read n
	for ((i=0; i<n; i++)) 
        do 
            for ((j=n-i; j>1; j--)) 
            do
               echo -n 
            done 
            for ((j=0; j<=i; j++ )) 
            do 
               echo "* " 
            done
            echo
        done
