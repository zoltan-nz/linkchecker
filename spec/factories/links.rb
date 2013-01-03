# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    page_id ""
    anchortext "MyString"
    crawled false
    outbound false
    targetpageid 1
  end
end
