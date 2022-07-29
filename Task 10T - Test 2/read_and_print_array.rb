def read_array()
  print('How many lines are you entering? ')
  count = gets.to_i
  a = Array.new
  index = 0
  while index < count
  print('Enter text: ')
  line = gets.chomp
  a << line
  index +=1
  end
  return a
end

def print_array(a)
  count = a.length
  index = 0
  puts('Printing lines:')
  while index < count
  puts(index.to_s + ' ' + a[index])
  index +=1
  end
end

def main()
   a = read_array()
   print_array(a)
end

main()