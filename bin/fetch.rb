#!/usr/bin/env ruby

require 'optparse'

$LOAD_PATH.unshift File.expand_path('../../lib/', __FILE__)
require 'sufeed'
require 'caskr'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: check.rb [options]"

  opts.on("-w", "--write", "Write update") do |w|
    options[:write] = w
  end
end.parse!

name = ARGV.first
cask = Caskr.load_cask(name)
if Sufeed.exist? cask.to_s
  latest = Sufeed.fetch(cask.to_s).latest
  puts latest
  if latest and cask.version != latest.version
    Caskr.update_cask cask, latest if options[:write]
  end
else
  begin
    update = Caskr.fetch(cask)
    if update
      puts <<EOF
--------------------------------------------------------------------------------
#{cask}: #{update[:curver]} -> #{update[:newver]}
#{update[:appsha256]}
-> #{update[:latest_sha256]}
#{update[:cursha256]}
-> #{update[:newsha256]}
--------------------------------------------------------------------------------
EOF
      Caskr.update_cask cask, update if options[:write]
    else
      #puts "#{cask}: #{cask.version}"
    end
  rescue => err
    puts "#{cask}: #{err}"
  end
end
