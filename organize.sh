#!/bin/bash
tar=./
origin=./

while getopts t:o: flag
do
    case "${flag}" in
        t) tar=$OPTARG;;
        o) origin=$OPTARG;;
        *) extensions=$OPTARG;;
    esac
done

shift "$(( OPTIND - 1 ))";

echo "Tar: $tar";
echo "Origin: $origin";
echo "*******************";

# store arguments in a special array 
args=("$@") 
# get number of elements 
ELEMENTS=${#args[@]} 
 
# echo each element in array  
# for loop 
for (( i=0;i<$ELEMENTS;i++)); do 
	find $origin -name "*.${args[${i}]}" -exec tar --transform 's/.*\///g' -rvf $tar/${args[${i}]}.tar {} \; -exec /bin/rm {} \;
	echo ${args[${i}]} 
done