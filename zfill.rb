def zfill (length, number)
	#Check if number is a string or float
	if number.class != String
		number = number.to_s
	end
	#Check if number has any letters, if so, breaks off.
	if number.match(/\D/)
		raise "Variable given, '#{number}', is not a number"
	end
	#Check if number is a float, and pad the correct number of zeros
	if number.include?(".")
		to_fill = length - number.split(".")[0].length
	else  
		to_fill = length - number.length()
	end
	#Check if the result is a negative number. If it is, 
	# it sets to_fill to 0
	if to_fill < 0
		to_fill = 0
	end
	number = "0"*to_fill + number
	return number
end
