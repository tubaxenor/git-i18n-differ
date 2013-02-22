require 'yaml'
module GitI18nDiffer
  class Runner
    class << self
      def run(args=[])
        if args.length == 0
          @config = File.join(ROOT_DIR, 'config/config.yml.default')
        elsif args.length == 1
          @config = args[0]
        else
          @config = args[0]
          oldrev, newrev = args[1], args[2]
        end

        if !File.exist?(@config)
          Logger.error "can locate your config file"
          return
        end
        if !oldrev
          if $stdin.eof?
            Logger.error "no data from git"
            return
          end
          $stdin.each_line do |line|
            oldrev, newrev, _ = line.strip.split
            run_hook oldrev, newrev
          end
        else
          newrev ||= oldrev
          run_hook oldrev, newrev
        end
      end

      private
        def run_hook(oldrev, newrev)
          config = YAML::load_file(@config)
          main_file = config['main_lang_file']
          monitor_files = config['monitor_lang_file']
          main_file_diff = Git.get_diff(main_file, oldrev, newrev)
          messages = get_changes(main_file_diff)
          Logger.info messages
        end

        def get_changes(diff)
          message = []
          start = nil
          diff.split("\n").each_with_index do |line, i|
            start = i if line =~ /^@@ /
            if start && i >= start
              message << line.strip
            end
          end
          message
        end
    end
  end
end