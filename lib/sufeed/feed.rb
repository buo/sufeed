class Feed < Hashie::Dash
  property :name, required: true
  property :latest
end
