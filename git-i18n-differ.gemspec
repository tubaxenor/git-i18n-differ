# -*- encoding: utf-8 -*-
require File.expand_path('../lib/git-i18n-differ/version', __FILE__)
Gem::Specification.new do |gem|
  gem.authors       = ["xenor"]
  gem.email         = ["tubaxenor@gmail.com"]
  gem.description   = %q{a git i18n differ}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/tubaxenor/git-i18n-differ.git"
  gem.executables   = ['git_i18n_differ']
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "git-i18n-differ"
  gem.require_paths = ["lib"]
  gem.version       = GitI18nDiffer::VERSION
end
