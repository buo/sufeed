#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path('../../lib/', __FILE__)
require 'sufeed'

begin
  puts Sufeed.fetch ARGV.first
rescue => err
  puts err
end
