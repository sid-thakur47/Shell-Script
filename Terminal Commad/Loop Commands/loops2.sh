#!/bin/bash
for file in `ls *.txt`;
do
   folderName=`echo $file | awk -F. '{print $1}'`;
echo "checking for already existing directory started"
   if [ -d $folderName ];
   then
   rm -r $folderName;
fi
   mkdir $folderName;
echo "creating folder"
 echo $folderName
   cp $file $folderName;
echo copying ${file} to ${folderName};
done

