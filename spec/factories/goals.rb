FactoryBot.define do
  factory :goal do
    amount { 0 }
    unit { 0 }
    future
    factory :days_goal do
      amount { 5 }
      unit { 2 }
    end
  end
end
