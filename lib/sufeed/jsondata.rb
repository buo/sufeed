require 'json'
require 'rest-client'

module Sufeed
  def self.jsondata(url)
    resp = RestClient.get(url)
    JSON.parse(resp.body)
  end
end
