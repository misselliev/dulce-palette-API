FactoryBot.define do
  factory :palette do
    trait :valid_palette do
      id { 10 }
      association :user_id, factory: %i[user valid_user]
      color_palette { ['rgb(170, 121, 242)'] }
    end
  end

  trait :invalid_palette do
    id { 10 }
    association :user_id, factory: %i[user valid_user]
    color_palette { nil }
  end
end
