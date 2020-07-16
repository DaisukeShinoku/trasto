FactoryBot.define do
  factory :user do
    sequence(:account_name) { |n| "example#{n}" }
    display_name { "EXAMPLE"} 
    sequence(:email) { |n| "tester#{n}@example.com" }
    password { "password"} 
    password_confirmation { "password"} 
    is_valid { true } 
    activated { true }
    activated_at { Time.zone.now }
  end
end
