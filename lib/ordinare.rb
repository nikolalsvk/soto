require "ordinare/version"
require "optparse"

module Ordinare
  module_function

  def hi
    "Ciao, sono Ordinare"
  end

  def parse_args
    OptionParser.new do |opts|
      opts.banner = "Usage: ordinare inside your Rails project"

      opts.on("-v", "--version", "Check gem version") do
        puts Ordinare::VERSION
      end

      opts.on("-h", "--help", "Get help") do
        puts opts
      end
    end.parse!
  end

  def sort(path = "Gemfile")
    unless File.file?(path)
      abort("No Gemfile found in the current directory, is this a Rails project with Gemfile?")
    end
  end
end
