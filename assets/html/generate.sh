#!/usr/bin/sh

files=($(find . -type f -name SV-*.html))
for fileName in ${files[*]}
do
   outFileName=${fileName}".txt";
#  printf ${outFileName};  
# outFileName1=$(sed -e "s/.html/.txt/g" ${outFileName})
# printf $fileName "%s\n"
# printf ${outFileName} "%s\n"
if [[  $fileName != *_a*.html ]];
then
  echo $outFileName;
  /usr/bin/perl generate.pl $fileName > "${outFileName}"
fi
done
