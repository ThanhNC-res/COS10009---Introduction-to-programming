
def write_data_to_file(a_file)
   a_file = File.new("mydata.txt", "w") #
   a_file.puts('5')
   a_file.puts('Fred')
   a_file.puts('Sam')
   a_file.puts('Jill')
   a_file.puts('Jenny')
   a_file.puts('Zorro')
   a_file.close
end

def read_data_from_file(a_file)
  a_file = File.new("mydata.txt", "r")
  count = a_file.gets.to_i()
  i = 0
  while i < count
    puts a_file.gets
    i += 1
  end
  a_file.close
end

def main
  write_data_to_file("mydata.txt")
  read_data_from_file("mydata.txt")
end

main()
