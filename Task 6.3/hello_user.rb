require 'date'
require './input_functions'
INCHES = 39.3701 

def main
	name = read_string('What is your name?')
	puts 'Your name is ' + name.chomp
	puts '!'
	family_name = read_string('What is your family name?')
	puts 'Your family name is: ' + family_name.chomp + '!'
	year_born = read_integer('What year were you born?')

	age = Date.today.year - year_born
	puts 'So you are ' + age.to_s + ' years old'
	puts 'Enter your height in metres (i.e as a float): '
	value = gets.to_f
	value = value *INCHES
	puts "Your height in inches is: "
	puts value.to_s 
	puts 'Finished'
	# continue = read_boolean("Do you want to continue?")
	# if (continue)
	# 	puts 'ok lets continue'
	# else
	# 	puts 'ok, goodbye'
	# end
	
end

main
