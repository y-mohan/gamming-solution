def print_dashboard(n: nil)
	return nil if n.nil?
	k = 5
	if n == 3
	   i = n -1; j = n -2;
	elsif n == 1
	   i = n +1 ; j = n + 2 
	end
	1.upto(k).each  { | x |
		puts "#{n} " * k if x.odd? and x != 3
		puts "#{n}" + " #{i}" + " #{j}" + " #{i} " + "#{n}" if x == 3
		puts "#{n}" + (" #{i}" * 3) + " #{n}"  if x.even?  
	}
end

puts "When the value of n is 3"
print_dashboard(n: 3)
puts "When the value of n is 1"
print_dashboard(n: 1)