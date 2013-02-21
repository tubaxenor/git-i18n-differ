require 'test_helper'
describe GitI18nDiffer::Runner do
  it "can be ran" do
    GitI18nDiffer::Runner.run(File.join(ROOT_DIR, 'config/config.yml.default')).wont_be_nil
  end
end
