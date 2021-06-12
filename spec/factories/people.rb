FactoryBot.define do
  factory :person do
    first_name { "test" }
    last_name { "test" }
    email { Faker::Internet.email }
    password { "testing" }
  end
end
