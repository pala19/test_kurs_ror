FactoryBot.define do
  factory :restaurant do
    name { Faker::BackToTheFuture.character }
    address { Faker::BackToTheFuture.date }
    association :restorer
  end
end
