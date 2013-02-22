class GitI18nDiffer::Git
  class << self
    def from_shell(cmd)
      r = `#{cmd}`
      raise ArgumentError.new("#{cmd} failed") unless $?.exitstatus.zero?
      r.force_encoding(Encoding::UTF_8) if r.respond_to?(:force_encoding)
      r
    end

    def get_diff(file, oldrev, newrev)
      line = from_shell("git log #{oldrev}..#{newrev} --name-status --pretty=oneline #{file}")
      status = get_status(line)
      if status == 'D'
        Logger.info "file deleted in revision"
      else
        gitopt = " --date=rfc2822"
        gitopt += " --pretty=fuller"
        #gitopt += " -w" if opts[:ignore_whitespace] == 'all'
        gitopt += " -b"
        Logger.info "git show #{rev.strip}#{gitopt}"
        from_shell("git show #{rev.strip}#{gitopt}")
      end
    end

    def get_status(line)
      if line
        line[0,1]
      else
        Logger.info "no changes in file"
      end
    end
  end
end
