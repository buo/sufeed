require 'json'
require 'open-uri'

module Sufeed
  def self.json(url)
    JSON.parse(open(url).read)
  end
end
