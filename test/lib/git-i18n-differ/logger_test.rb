require 'test_helper'
describe GitI18nDiffer::Logger do
  it "can log" do
    GitI18nDiffer::Logger.info('aaa').must_equal true
  end
end