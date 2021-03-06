#!/bin/bash

# Populates list of images to label ("dirlist").  This list is stored
# inside "/path/to/LabelMe/annotationCache/DirLists/".
#
# Make sure to run this script from "annotationTools/sh/" folder.  
# Otherwise, it will be necessary to modify HOMEIMAGES and HOMEDIRLIST 
# below.
#
# Example 1: Populate entire image database
# $ cd /path/to/LabelMe/annotationTools/sh
# $ ./populate_dirlist.sh
#
# Example 2: Create a new collection called "labelme2" and populate 
# subfolder "folder1":
# $ cd /path/to/LabelMe/annotationTools/sh
# $ ./populate_dirlist.sh labelme2.txt folder1


# populate_dirlist.sh [dirlist.txt] [folder]
#
# dirlist.txt - Dirlist filename
# folder - Sub-folder under root folder

# Pointer to Images/ and DirLists/ directories:
HOMEIMAGES='../../Images'
HOMEDIRLIST='../../annotationCache/DirLists'
HOMEVIDEOS='../../VLMFrames'

# Inputs:
dirlist=$1
folder=$2


baseurl='tagobject.com'

videodirlist='labelmevideo.txt'
# Handle empty input argument cases:
if [ "$dirlist" == "" ]; then
    dirlist='labelme.txt';
    
fi

if [ "$folder" == "" ]; then
   ImageDir=$HOMEIMAGES;
   VideoDir=$HOMEVIDEOS;
else
   ImageDir="$HOMEIMAGES/$folder";
   VideoDir="$HOMEVIDEOS/$folder";
fi

#https://tagobject.com/LabelMeAnnotationTool/annotationTools/html/mt_instructions.html


a=0;
b=10;

# Populate dirlist:
find $ImageDir | while read i; do
    if [[ $i =~ ^.*\.jpg$ ]]; then
#	echo $i
		dname=$(dirname $i | sed -e s=$HOMEIMAGES/==);
		iname=$(basename $i);

        folder="$dname"

#		echo "https://$baseurl/LabelMeAnnotationTool/tool.html?collection=$folder&mode=mt&folder=$folder&image=$iname&mt_sandbox=true&N=2";
#		echo "https://$baseurl/LabelMeAnnotationTool/tool.html?collection=$folder&mode=mt&folder=$folder&image=$iname&mt_sandbox=true&N=2" >> $HOMEDIRLIST/$dirlist;
		echo "https://$baseurl/LabelMeAnnotationTool/tool.html?collection=$folder&mode=mt&folder=$folder&image=$iname&N=2";
		echo "https://$baseurl/LabelMeAnnotationTool/tool.html?collection=$folder&mode=mt&folder=$folder&image=$iname&N=2" >> $HOMEDIRLIST/$dirlist;

        a=$(($a+1));
        if [ "$a" -gt "$b" ]; then
            break;
        fi

    fi
done

# Populate dirlist:
#ls $VideoDir | while read i; do
#	idname=$VideoDir$i;
#	ls $idname | while read j; do
#		dirn=$idname/$j;
#		dname=$i/$j;
#		ls $dirn | while read na; do
#			videoname=$(basename $na);
#			echo "$dname,$videoname";
#			echo "$dname,$videoname" >> $HOMEDIRLIST/$videodirlist;
#		done
#	done
#done
#
#

