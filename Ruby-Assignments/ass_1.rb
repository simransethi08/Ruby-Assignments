#!/usr/bin/ruby

#using eleif

def printing(n)
 (1..n).each do|i|
   if (i % 3 == 0) && (i % 5 == 0)	#divisibility test for 3 and 5
	puts 'FizzBuzz'
   elsif (i % 3 == 0)			#divisibility test for 3
  	puts 'Fizz'
   elsif (i % 5 == 0)			#divisibility test for 5
  	puts 'Buzz'
   else
  	puts i
   end
 end
end

printing(100)

