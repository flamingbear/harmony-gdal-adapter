#!/bin/bash

#test whole messages in messages directory

cd /home/unittest

output_dir=data/results

#ls $PWD/data/messages/gfrn/*>flist

find ./data/messages -type f -name "*.msg" | xargs realpath > flist

exit 0

while read line

do 
	
echo "process message $line..."

./test_one_message.bash $line $output_dir

done < flist

rm flist

