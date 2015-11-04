require 'curb'
require 'digest'
require 'tempfile'

module Sufeed
  def self.checksum(url)
    file = Tempfile.new('sufeed')
    Curl::Easy.download(url, file.path) do |curl|
      curl.follow_location = true
    end
    sha256 = Digest::SHA2.file(file.path).hexdigest
    return sha256
  end
end
