require 'logger'
module GitI18nDiffer
  class Logger
    class << self
      def method_missing(*args, &block)
        logger.send(*args, &block)
      end

      def set(logger)
        @logger = logger
      end

      private

      def logger
        @logger ||= ::Logger.new(STDOUT)
      end
    end
  end
end