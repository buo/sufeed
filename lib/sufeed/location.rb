require 'rest-client'

module Sufeed
  def self.location(url)
    RestClient.head url do |response, request, result, &block|
      if [301, 302, 307].include? response.code
        response.headers[:location]
      end
    end
  end
end
