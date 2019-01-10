FactoryBot.define do
  factory :restorer do
    sequence(:email) { |n| "restorer#{n}@test.com" }
    password { 'password' }
    name { 'test' }
    surname { 'test' }
  end
end
