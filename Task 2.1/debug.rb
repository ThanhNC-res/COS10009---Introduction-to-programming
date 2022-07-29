require 'date'

def get_age()
  puts "Enter your age in years: "
  age_in_years = gets.chomp.to_i
  return age_in_years
end

def get_string(prompt)
  puts prompt
  s = gets
  return s
end

def print_year_born(name, age)
  year_born = Date.today.year -  age
  puts name.chomp + " " + "you were born in: " + year_born.to_s
end

def main()
  age = get_age()
  name = get_string("Enter your name: ")
  print_year_born(name, age)
end

main()
