FactoryBot.define do
  factory :action do
    title { "MyString" }
    last_execution { Time.zone.now - 4.days }
    # goal { 15 }
    # goal_unit { 0 }
    icon { "String" }
    show_icon { false }
  end
end
