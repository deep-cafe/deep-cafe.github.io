#!/bin/bash

for f in $(find ./assets/images -name '*.tif');
do
  newfilename="$(realpath $f | sed "s/\.tif$//").jpg"

  if [ -e "$(realpath $f | sed "s/\.tif$//").jpg" ]
  then
    echo "Already exists – $(basename $newfilename)"
  else
    echo "Converting – $(basename $f)"
    magick "$f" $newfilename
    trash $f
  fi
done
