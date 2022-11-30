#!/usr/bin/env ruby

require 'optparse'
opt = OptionParser.new

opt.on("-g", "--germany", "Show the winners and losers of the match between Japan and Germany") {puts 'WIN'}
opt.on("-c", "--costarica", "Show the winners and losers of the match between Japan and Costa Rica") {puts 'LOSE'}

opt.parse(ARGV)