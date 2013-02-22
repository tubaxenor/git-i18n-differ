require 'test_helper'
describe GitI18nDiffer::Runner do
  it "can be ran" do
    GitI18nDiffer::Runner.run([File.join(ROOT_DIR, 'config/config.yml.default'), 'f77e0e384ade570f32b81253b1ab98bc8042e55f', '84c7740800d7dc86ed8e47a9044d4aeea2785992']).wont_be_nil
  end
end
