FactoryBot.define do
  factory :user do
    first_name { 'Elisângela' }
    last_name { 'Silva' }
    is_admin { false }
    sequence(:email) { |n| "elisangela_silva#{n}@example.com" }
    password { 'ruffusgooddoggie' }
  end
end
