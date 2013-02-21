require 'test_helper'
describe GitI18nDiffer::Runner do
  it "can be ran" do
    GitI18nDiffer::Runner.run("whatever").wont_be_nil
  end
end
