require 'yaml'

module Sufeed
  @@config = YAML.load_file('config/config.yaml')
end
