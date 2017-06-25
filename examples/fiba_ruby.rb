$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

def fibanachos(n)
  return  n  if n <= 1 
  fibanachos(n - 1) + fibanachos(n - 2)
end 

number = ARGV[0] || gets

raise "Argument isn't a number!" unless number = number.to_i

puts fibanachos(number)
