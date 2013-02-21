ROOT_DIR = File.expand_path(File.dirname(File.dirname(__FILE__)))
$LOAD_PATH.unshift(ROOT_DIR)
require 'minitest/autorun'
require 'minitest/pride'
require 'lib/git_i18n_differ.rb'
