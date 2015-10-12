#Caesar Cyphers in Ruby


@letter_to_num = {" "=>0, "a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10, 
	"k"=>11, "l"=>12, "m"=>13, "n"=>14, "o"=>15, "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, 
	"u"=>21, "v"=>22, "w"=>23, "x"=>24, "y"=>25, "z"=>26} 
#A library to convert letters to numbers

@num_to_letter = {0=> " ", 1=>"a", 2=>"b", 3=>"c", 4=>"d", 5=>"e", 6=>"f", 7=>"g", 8=>"h", 9=>"i", 
	10=>"j", 11=>"k", 12=>"l", 13=>"m", 14=>"n", 15=>"o", 16=>"p", 17=>"q", 18=>"r", 19=>"s",
	20=>"t", 21=>"u", 22=>"v", 23=>"w", 24=>"x", 25=>"y", 26=>"z"}
#A library to convert numbers to letters

def encrypt(string, key)

	split_string = string.split("") #splits the secret string to an array

	vanilla_array = [] #A blank array to store converted letters
	split_string.each { |x| #converts each letter to it's corresponding number
		vanilla_array.push(@letter_to_num[x]) #pushes a letter's corresponding numbers into code_array
	} 


	key_array = [] #A blank array to store array encrypted with key
	vanilla_array.each { |x|
		key_array.push(x = (x + key) % 26) #modulo 26 for numbers that go over 26
	}

	cyphertext = [] #A blank array to store new nums coverted to letters
	key_array.each {|x| 
	cyphertext.push(@num_to_letter[x]) 
	}

	cyphertext = cyphertext.join("") #join new array of letters into cyphertext

	return cyphertext 
end 

def decrypt(string, key)


	string = string.split("") #split cyphertext string into array of letters

	to_num_array = [] #create new array to store cyphertext letters converted to nums
	string.each { |x|
		to_num_array.push(@letter_to_num[x])
	}

	code_array = [] #A blank array to store the converted numbers
	to_num_array.each { |x|
	code_array.push((x - key) % 26) #subtracting the key from each number and pushing it into a new array
	}

	vanilla_array = [] #A blank array to push the decrypted numbers
	code_array.each {|x| #converts each number to it's corresponding letter
	vanilla_array.push(@num_to_letter[x]) #pushes a number's corresponding letter into code_array
	}

	plaintext = vanilla_array.join("") #join letters into plaintext string

	return plaintext #returns the original plaintext
end 

p encrypt("ruby", 2)

