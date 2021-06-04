FactoryBot.define do
  factory :countdown do
    title { "Count Down Title" }
    event_date { Time.zone.now + rand(5..100).days }
  end
end
