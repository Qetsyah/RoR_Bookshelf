User.create!(first_name: "Elisângela", last_name: "Silva", email: 'elisangela_silva@example.com', password: "ruffusgooddoggie")

1.times do
  Shelf.create!
end

Book.create!(
  title: 'Coding Catastrophes: Hilarious Tales from Debugging Disasters',
  description: 'Dive into the world of programming gone wrong with this
  collection of side-splitting anecdotes about coding mishaps, hilarious bugs,
  and debugging debacles. From accidentally creating sentient chatbots to turning
  coffee machines into musical instruments, these stories will leave you laughing and learning',
  author: 'Miranda Byte'
  genre: 'Humor'
)

Book.create!(
  title: 'The Art of Quantum Sandwich Making',
  description: 'Delve into the quantum realm and discover the secrets
   of crafting the perfect subatomic sandwich. This groundbreaking guide
    combines the principles of quantum mechanics with culinary expertise
     to elevate your sandwich-making skills to a whole new level. From
      wavefunction spreads to entangled ingredients, get ready to revolutionize your lunchtime routine.',
  author: 'Miranda Byte'
  genre: 'Humor'
)
