#!/usr/bin/env ruby

require 'optparse'
opt = OptionParser.new

result = nil
opt.on("-g", "--germany") {|v| result = 'WIN'}
opt.on("-c", "--costarica") {|v| result = 'LOSE'}

opt.parse!(ARGV)

puts result