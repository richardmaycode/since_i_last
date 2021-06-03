FactoryBot.define do
  factory :event do
    title { "MyString" }
    icon { "MyString" }
    factory :future_event do
      association :eventable, factory: :future
      date { Time.zone.now + 5.days }
    end

    factory :prior_event do
      association :eventable, factory: :prior
      date { Time.zone.now - 5.days }
    end
  end
end
