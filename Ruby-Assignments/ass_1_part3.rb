#!/usr/bin/ruby

#using case

def printing(n)
 (1..n).each do|i|
	case i
	
	when ->(n) {n.modulo(3).zero? && n.modulo(5).zero?} 	#divisibility test for 3 and 5
	  puts "FizzBuzz"
	when ->(n) {n.modulo(3).zero?}					#divisibility test for 3
		puts "Fizz"
	when ->(n) {n.modulo(5).zero?}					#divisibility test for 5
		puts "Buzz"
	else
		puts i
	end
 end
end

printing(100)

