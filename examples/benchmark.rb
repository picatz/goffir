#$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'goffir'
#require 'sinatra'
#require 'pi_chats'

require "benchmark/ips"

counter = 0

40.times do
  counter += 1
  Benchmark.ips do |x|
    x.report("Go@#{counter}") { Goffir.fibanachos counter   }
    x.report("Ruby@#{counter}") { Goffir.purist counter     }
    x.compare!
  end
end

#get '/' do
#  chart = PiCharts::Line.new
#
#
#end
