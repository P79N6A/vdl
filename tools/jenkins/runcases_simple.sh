for filename in $( ls | grep _test);
do
sh $filename;
done