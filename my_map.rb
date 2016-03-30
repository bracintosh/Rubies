#Made my own .map method with the help of yield

def __map(arr)
	if arr.is_a? Array or Hash
		result = []
		for element in arr do
			my_loop = yield element
			result.push(my_loop)
		end
		result
	else
		puts "Please pass an array or hash."
	end
end

__map([1, "potato", 26, "Allahu akbar!", 2*3]){|element|
		#Code starts here

		#Code ends here
	}