User.create!(first_name: "Elisângela", last_name: "Silva",
  email: "elisangela_silva@example.com", password: "ruffusgooddoggie")


shelf = Shelf.create!


Book.create!(
  title: 'Clean Code: A Handbook of Agile Software Craftsmanship',
  description: 'This classic text by Robert C. Martin presents principles
  and practices of writing clean, well-structured, and maintainable code.
  It emphasizes code readability, maintainability, and the importance of
  writing code that promotes long-term sustainability.',
  author: 'Robert C. Martin',
  genre: :software_engineering,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg',
)

Book.create!(
  title: 'The Design of Everyday Things',
  description: 'This influential book by Donald Norman explores the principles
  of good design, focusing on creating user-centered interfaces and products
  that are both useful and pleasurable to interact with.',
  author: 'Donald Norman',
  genre: :design,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/1458916/pexels-photo-1458916.jpeg'
)

Book.create!(
  title: 'Getting Things Done: The Art of Stress-Free Productivity',
  description: 'This popular book by David Allen provides a framework for
  personal productivity and organization. It emphasizes the importance of
  capturing tasks, defining projects, and prioritizing your workload to
  achieve maximum efficiency.',
  author: 'David Allen',
  genre: :project_management,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/1346086/pexels-photo-1346086.jpeg'
)

Book.create!(
  title: 'Eloquent Ruby: A Pragmatic Guide to the Most Beautiful Language in the World',
  description: 'This book by Russ Olsen explores the beauty and power of
  the Ruby programming language, focusing on idiomatic code, design patterns,
  and best practices for writing elegant and effective Ruby code.',
  author: 'Russ Olsen',
  genre: :ruby,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/406014/pexels-photo-406014.jpeg'
)

Book.create!(
  title: 'Programming Elixir: Learn Functional Programming for Scalable Applications',
  description: 'This book by Dave Thomas introduces the functional programming
  language Elixir, known for its scalability and focus on concurrency. It guides
  readers through building applications with Elixir, exploring its syntax,
  libraries, and design principles.',
  author: 'Dave Thomas',
  genre: :elixir,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg'
)


Book.create!(
  title: 'Building Web Applications with Phoenix: A Practical Guide',
  description: 'This book by Chris McCord explores the Phoenix framework
  for building web applications in Elixir. It teaches readers how to
    leverage Phoenix features like hot reloading, channels, and embedded
    HTML to create efficient and scalable web applications.',
  author: 'Chris McCord',
  genre: :phoenix,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/1619690/pexels-photo-1619690.jpeg'
)

Book.create!(
  title: 'Head First Android Development: A Brain-Friendly Guide',
  description: 'This book by Dawn Griffiths and David Griffiths uses a
  visual and interactive approach to teach readers the fundamentals of
  Android app development. It covers essential topics like layout,
  activities, fragments, and services, providing a solid foundation
  for building Android applications.',
  author: 'Dawn Griffiths, David Griffiths',
  genre: :android,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/1390361/pexels-photo-1390361.jpeg'
)

Book.create!(
  title: 'App Development with Swift: The Mastermind Guide',
  description: 'This book by Apple guides readers through developing
  iOS apps using the Swift programming language. It covers core
  concepts like user interface design, data persistence, networking,
  and best practices for creating effective and engaging iOS applications.',
  author: 'Apple',
  genre: :ios,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/1629781/pexels-photo-1629781.jpeg'
)

Book.create!(
  title: 'A Random Walk Down Wall Street: The Time-Tested Strategy for Successful Investing',
  description: 'This classic book by Burton Malkiel explores the
  concept of random walk in financial markets, advocating for a
  long-term, diversified investment strategy. It provides insights
  into different investment strategies and historical trends in the market.',
  author: 'Burton Malkiel',
  genre: :finance,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/97863/pexels-photo-97863.jpeg'
)

Book.create!(
  title: 'Deep Work: Rules for Focused Success in a Distracted World',
  description: 'This book by Cal Newport argues for the importance
  of focused work in a world filled with distractions. It provides
  strategies for cultivating deep work, managing distractions,
  and maximizing productivity in todays environment.',
  author: 'Cal Newport',
  genre: :productivity,
  shelf: shelf,
  cover_url: 'https://images.pexels.com/photos/485294/pexels-photo-485294.jpeg'
)

