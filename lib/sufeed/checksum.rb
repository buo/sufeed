require 'curb'
require 'digest'
require 'tempfile'

module Sufeed
  def self.checksum(url)
    file = Tempfile.new('sufeed')
    Curl::Easy.download(url, file.path)
    sha256 = Digest::SHA2.file(file.path).hexdigest
    file.close
    file.unlink

    return sha256
  end
end
