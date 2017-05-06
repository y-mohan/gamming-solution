def bubble_sort(array)
	n=array.length
	temp=0
	(n-1).times do |j|
		(n-1).times do |i|
			if array[i]>array[i+1]
		
				temp=array[i]
				array[i]=array[i+1]
				array[i+1]=temp
			end

	    end
	end
	print array
		
	end
	x=bubble_sort(["z","a","c","c","b","a"])
