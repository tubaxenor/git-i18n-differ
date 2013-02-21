require 'yaml'
class GitI18nDiffer::Runner
  class << self
    def run(config)
      @config = YAML::load_file(config)
    end
  end
end