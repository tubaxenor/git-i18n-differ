ROOT_DIR ||= File.expand_path(File.dirname(File.dirname(__FILE__)))
$LOAD_PATH.unshift(ROOT_DIR)

require "lib/git-i18n-differ/version"
require "lib/git-i18n-differ/git"
require "lib/git-i18n-differ/runner"
require "lib/git-i18n-differ/logger"
