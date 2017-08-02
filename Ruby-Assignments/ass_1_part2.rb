#!/usr/bin/ruby

#using return..if

def printing(n)
 (1..n).each do|i|
	return 'FizzBuzz' if (i % 3 == 0) && (i % 5 == 0)	#divisibility test for 3 and 5
	
	return 'Fizz' if (i % 3 == 0)				#divisibility test for 3
  	
	return 'Buzz' if (i % 5 == 0)				#divisibility test for 5
  	
	return '#{i}' 
  	

 end
end

printing(100)

