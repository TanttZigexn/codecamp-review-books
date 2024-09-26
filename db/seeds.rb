# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

books_data = [
  {
    title: "To Kill a Mockingbird",
    content: "Set in the 1930s Alabama, this novel follows Scout Finch as her father, Atticus, defends a black man accused of a crime he didn't commit. It explores themes of racial injustice and the loss of innocence."
  },
  {
    title: "1984",
    content: "In a dystopian future, Winston Smith rebels against the totalitarian government of Oceania. This novel introduces concepts like Big Brother, thoughtcrime, and Newspeak."
  },
  {
    title: "Pride and Prejudice",
    content: "Elizabeth Bennet navigates issues of manners, upbringing, morality, and marriage in 19th-century England. Her relationship with the proud Mr. Darcy forms the core of this classic romance."
  },
  {
    title: "The Great Gatsby",
    content: "Set in the Roaring Twenties, this novel follows the mysterious millionaire Jay Gatsby and his obsession with the beautiful Daisy Buchanan. It critiques the American Dream and the excesses of the Jazz Age."
  },
  {
    title: "The Catcher in the Rye",
    content: "Holden Caulfield, a teenage boy expelled from his prep school, spends three days wandering New York City. The novel explores themes of alienation, innocence, and the challenges of adolescence."
  }
]

books_data.each do |book|
  Book.create!(book)
end

puts "Seeded #{Book.count} books."

comments_data = [
  { book_id: 1, user_name: "Alice", content: "A timeless classic that everyone should read." },
  { book_id: 1, user_name: "Bob", content: "The characters are so well-developed. Atticus is my hero!" },
  { book_id: 2, user_name: "Charlie", content: "Orwell's vision of the future is chilling and thought-provoking." },
  { book_id: 2, user_name: "Diana", content: "I found it a bit depressing, but I understand its importance." },
  { book_id: 3, user_name: "Eve", content: "Elizabeth Bennet is such a strong female character for her time." },
  { book_id: 3, user_name: "Frank", content: "The wit and social commentary are brilliant." },
  { book_id: 4, user_name: "Grace", content: "Fitzgerald's prose is beautiful. I love the symbolism throughout." },
  { book_id: 4, user_name: "Henry", content: "A perfect snapshot of the Roaring Twenties." },
  { book_id: 5, user_name: "Ivy", content: "Holden's voice is so authentic. It really captures teenage angst." },
  { book_id: 5, user_name: "Jack", content: "I reread this every few years and always find something new." }
]

comments_data.each do |comment|
  Comment.create!(comment)
end

puts "Seeded #{Comment.count} comments."
