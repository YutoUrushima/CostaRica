#!/usr/bin/env ruby
require "optparse"
require "json"

class WorldCup2022
  def initialize
    @result = nil
    @constants = {}
    self.load_constants
    OptionParser.new do |opt|
      opt.on(
        "-g",
        "--germany",
        "Show the winners and losers of the match between Japan and Germany"
      ) { |val| @result = @constants[:constants][:win] }
      opt.on(
        "-c",
        "--costarica",
        "Show the winners and losers of the match between Japan and Costa Rica"
      ) { |val| @result = @constants[:constants][:lose] }
      opt.on(
        "-s",
        "--spain",
        "Show the winners and losers of the match between Japan and Spain"
      ) { |val| @result = @constants[:constants][:win] }
      raise "Input correctly" unless self.is_valid?
      opt.parse(ARGV)
    rescue OptionParser::InvalidOption => error
      puts MESSAGE
    rescue => error
      puts error
    end
  end

  def specify?
    return !!@result
  end

  def get_the_result
    return @result
  end

  def is_valid?
    return false if ARGV.size == 0 || ARGV.size >= 2
    option_word = ARGV[0]
    if "-" == option_word[0] && "-" != option_word[1]
      return option_word.size <= 2
    end
    return true
  end

  def load_constants
    File.open("setting.json") do |f|
      @constants =
        JSON.load(f, nil, symbolize_names: true, create_additions: false)
    end
  end
end

worldcup2022 = WorldCup2022.new
puts worldcup2022.get_the_result if worldcup2022.specify?
