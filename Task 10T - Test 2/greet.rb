def main()
    # put your code here
    print('Enter your name: ')
    name = gets().to_s
    puts ('Hello, ' + name.chomp() + '!')
end

main