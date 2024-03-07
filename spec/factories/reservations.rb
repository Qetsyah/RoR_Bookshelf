FactoryBot.define do
  factory :reservation do
    book
    user

    trait :active do
      returned_on { Time.zone.now }
    end

    factory :reservation_active, traits: [:active]
  end
end
