FactoryBot.define do
  factory :book do
    sequence(:title) { |n| "Clean Code_#{n}" }
    description { 'This classic text by Robert C. Martin presents principles
                    and practices of writing clean' }
    cover_url { 'cover_url.jpg' }
    genre { 0 }
    author { 'Robert C. Martin' }
    shelf
  end
end
