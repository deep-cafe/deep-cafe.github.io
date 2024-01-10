#!/bin/bash

for f in $(find ./assets/images/gallery ! -name '*-final.jpg' ! -path '*/originals/*' -name '*.jpg');
do
  echo "Compressing – $(basename $f)"

  convert $f -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -resize 2000\> "$(realpath $f | sed "s/\.jpg$//")-final.jpg"

  originals=$(dirname $f)/originals

  mkdir -p $originals
  mv $f $originals
done
