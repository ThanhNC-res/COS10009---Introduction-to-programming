# Recursive Factorial

# Complete the following
def factorial(n)
if n == 0
  1
else
  n * factorial(n-1)
end
end

# Add to the following code to prevent errors for ARGV[0] < 1 and ARGV.length < 1
def main
  if ARGV[0].to_i <1 or ARGV.length <1
    puts("Incorrect argument - need a single argument with a value of 0 or more.\n")
  else
  puts factorial(ARGV[0].to_i)
  end
end

main
