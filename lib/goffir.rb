require 'ffi'
require 'goffir/go_builder'
require 'goffir/easter_egg'
require 'goffir/purist'

# @author Kent 'picat' Gruber
# A little example of how to build Go extensions in Ruby.
module Goffir

  # So that the ffi magic works in our module.
  extend FFI::Library

  # Sort of hacky for now... but, ok.
  begin
    unless File.exists?('ext/fibanachos/fibanachos.so')
      `go build -buildmode=c-shared -o ext/fibanachos/fibanachos.so ext/fibanachos/fibanachos.go`
    end
  rescue
    abort "Unable to build go lang extension."
  end

  # This file is required.
  ffi_lib 'ext/fibanachos/fibanachos.so'

  # Provide a ruby method to a tiny lil' ruby gopher that
  # will eat its way to the desired fibonacci number.
  #
  # Or at least that's how I like to imagine it.
  #
  # @example
  #   Goffir.fibanachos(42) # 36 seconds later...
  #   # => 267914296 
  #
  # @param  [Integer] Desired number in the sequence to calculate to.
  # @return [Integer] The number in the sequence at that number.
  #
  attach_function :fibanachos, [:uint], :int
end
