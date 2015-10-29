#!/usr/bin/env ruby
# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../../lib/', __FILE__)
require 'sufeed'
require 'caskr'

Caskr.each_cask do |cask|
  puts "#{cask}: #{cask.version}"
  next if cask.version == :latest

  if Sufeed.exist? cask.to_s
    latest = Sufeed.fetch(cask.to_s).latest
    if latest and cask.version != latest.version
      puts <<EOF
--------------------------------------------------------------------------------
#{latest}
--------------------------------------------------------------------------------
EOF
      Caskr.update_cask cask, latest
    end
  else
    # check update automatically
    next unless cask.appcast
    next unless cask.appcast.sha256

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
        Caskr.update_cask cask, update
      else
        #puts "#{cask}: #{cask.version}"
      end
    rescue => err
      puts "#{cask}: #{err}"
    end
  end
end
