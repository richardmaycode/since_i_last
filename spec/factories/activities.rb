FactoryBot.define do
  factory :activity do
    title { "MyString" }
    last_instance { Time.zone.now - 4.days }
    goal { 15 }
    goal_unit { 1 }
  end
end
