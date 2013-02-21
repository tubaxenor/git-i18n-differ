require 'yaml'
module GitI18nDiffer
  class Runner
    class << self
      def run(config, oldrev, newrev)
        @config = YAML::load_file(config)
      end
    end
  end
end