for file in testcases16/*
do
	#echo $file
  	./sclp16 -ast -tokens $file
done