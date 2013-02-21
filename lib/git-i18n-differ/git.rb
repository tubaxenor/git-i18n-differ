class GitI18nDiffer::Git
  class << self
    def from_shell(cmd)
      r = `#{cmd}`
      raise ArgumentError.new("#{cmd} failed") unless $?.exitstatus.zero?
      r.force_encoding(Encoding::UTF_8) if r.respond_to?(:force_encoding)
      r
    end
  end
end
