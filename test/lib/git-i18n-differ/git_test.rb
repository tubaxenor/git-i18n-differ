require 'test_helper'
describe GitI18nDiffer::Git do
  it "can run git command" do
    GitI18nDiffer::Git.from_shell("git --version").must_match(/^git version/)
  end
end