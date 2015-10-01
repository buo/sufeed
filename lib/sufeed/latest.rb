class Latest < Hashie::Dash
  property :version, required: true
  property :url
end
