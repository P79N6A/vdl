for filename in $( ls | grep _test | grep simple);
do
sh $filename;
done