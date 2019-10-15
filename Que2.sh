#!bin/bash

function list_files()
{
	echo "Files are :"
	ls
}

function create_file()
{
	echo "ENter file name which u want to create :"
	read f1
	read f2
	touch f1 f2
	echo "Files are created..!"
}

function copy_fun()
{
	echo "Enter file name to copy : "
        read f1
   	
	echo "Enter file name : "
        read f2
        if [ -f $f1 ]
                then cp $f1 $f2
        else
                echo "File does not exists"
        fi
}

function move_file()
{
        echo "Enter file you want to move: "
        read f1

        echo "Enter where to move: "
        read d1

        if [ -f $f1 ]
                then 
                        if [ -d $d1 ]
                        then 
                        mv $f1 $d1
                        fi
        else
        echo "File not exist"
        fi 
}

function add_files()
{
	echo "Enter files which you wnat to compress"
	read f11_c
	read f22_c
	read f33_c
	touch $f11_c $f22_c $f33_c
}
function zip_file()
{
    add_files
    tar -czf archive.tar.gz $f11_c $f22_c $f33_c
    
}

function unzip_file()
{
    add_files
    tar -czf archive.tar.gz $f11_c $f22_c $f33_c
    tar -xf archive.tar.gz
    
}
echo "Menu"
echo "1. List Files"
echo "2. Create file"
echo "3. copy from one to anaother"
echo "4. Move File"
echo "5. Compress"
echo "6. Extract files" 
echo "10. Exit"


echo "Enter your choice : "
read ch

case "$ch" in
1) 
        list_files;;

2)      create_file;;

3)	copy_fun;;

4)	move_file;;

5)	zip_file;;

6)	unzip_file;;

7) echo "Exit..."
        exit;;
esac


