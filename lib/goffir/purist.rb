# @author Kent 'picat' Gruber
module Goffir
  # Are you some sort of Ruby purist?
  # 
  # @example
  #   Goffir.purist(42) # 36 seconds later...
  #   # => 267914296 
  #
  # @param  [Integer] Desired number in the sequence to calculate to.
  # @return [Integer] The number in the sequence at that number.
  #
  def self.purist(n)
    n <= 1 ? n : purist( n - 1 ) + purist( n - 2 ) 
  end
end
