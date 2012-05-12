# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    user_id 1
    party_id "MyString"
    integer "MyString"
    context "MyText"
  end
end
