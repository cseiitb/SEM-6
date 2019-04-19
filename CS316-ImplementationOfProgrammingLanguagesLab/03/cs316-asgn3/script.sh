for file in testcases/*
do
	#echo $file
  	./sclp -ast -tokens $file
done