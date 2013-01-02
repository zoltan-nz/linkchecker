# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    page_id 1
    anchortext "MyString"
    url "MyString"
    outbound false
    crawled false
    targetpageid 1
  end
end
