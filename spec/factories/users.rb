FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "admin#{n}@rubytuesday.com" }
    password '123456'
    password_confirmation '123456'
  end
end
