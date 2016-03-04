def __each(arr)
	if arr.is_a? Array or Hash
		for element in arr do
			yield element
		end
	else
		puts "Please pass an array or a hash"
	end
end

__each([1, "potato", 26, "Allahu akbar!", 2*3]){|element|
		#Code starts here
		puts element
		#Here ends your code
	}