#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/lib/git-i18n-differ/*_test.rb']
  t.verbose = true
end
task :default => :test
