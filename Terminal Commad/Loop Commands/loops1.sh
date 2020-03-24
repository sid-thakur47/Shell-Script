#!/bin/bash
ls *.txt
    for files in `ls *.txt`;
      do echo files are $files;
done



  for file in `ls *.txt`;
     do folderName=`echo $file |
        awk -F. '{print $1}'`;
          echo $folderName;  
    done

  

for file in `ls *.txt`;
     do folderName=`echo $file |
        awk -F. '{print $1}'`;
          mkdir $folderName;
            cp $file $folderName;
            echo Copied $file to $folderName/;
       done

ls -p
ls -p abc
ls -p ada