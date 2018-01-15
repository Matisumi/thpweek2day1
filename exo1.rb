x = 0;
total = 0;

for x in 0 ... 1000
	if x % 3 == 0 || x % 5 == 0
		total +=  x;
	end
end

=begin
while x < 1000 

	if x % 3 == 0 || x % 5 == 0
		total += x;
	end
	x += 1;
end
=end

puts total;