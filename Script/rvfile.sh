#Shell script to compare two files. If the files are identical delete one

if [ $# -eq 1 ]
then
    echo "syntax error"
    exit
fi

echo "Enter the filename 1:"
read f1
echo "Enter the filename 2:"
read f2
cmp $f1 $f2
if [ $? -eq 0 ]
then
	rm $f2
	echo "Two files are Identical,Second File removed."
	exit
fi
echo "Files not identical.Deletion of File is not Possible..!"
 

#Enter the filename 1:
#file1
#Enter the filename 2:
#file3
#Two files are Identical,Second File removed.

