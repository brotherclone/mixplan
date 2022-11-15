FactoryBot.define do
  factory :project do
    title { Faker::Name.unique.name }
  end
end