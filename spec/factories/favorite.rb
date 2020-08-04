FactoryBot.define do
  factory :favorite do
    trait :valid_favorite do
      id { 10 }
      association :user, factory: %i[user valid_user]
      palette_id { 10 }
    end
  end

  trait :invalid_favorite do
    id { 10 }
    association :user_id, factory: %i[user valid_user]
  end
end
