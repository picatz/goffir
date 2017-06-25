$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'goffir'

number = ARGV[0] || gets

raise "Argument isn't a number!" unless number = number.to_i

puts Goffir.fibanachos(number)
