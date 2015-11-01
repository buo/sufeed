require 'curb'
require 'digest'
require 'tempfile'

module Sufeed
  def self.checksum(url)
    file = Tempfile.new('sufeed')
    redirected = location(url)
    puts "Redirected to #{redirected}" if url != redirected
    Curl::Easy.download(redirected, file.path)
    #sha256 = Digest::SHA2.file(file.path).hexdigest
    sha256 = Digest::SHA2.hexdigest open(file.path).read
    file.close
    file.unlink

    return sha256
  end
end
