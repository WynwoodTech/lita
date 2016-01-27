module Lita
  class LoadConfig
    class << self
      def config_params
        config_params = YAML.load_file('../config/config.yml')
      end
    end
  end
end
