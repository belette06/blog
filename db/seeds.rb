# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Cette methode permet de générer aléatoirement 10 utilisateurs avec un nom, un prénom et une adresse email.
9.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

# Cette methode permet de générer aléatoirement 5 categories avec un nom.
4.times do
  categorie = Categorie.create!(name: Faker::Book.genre)
end

# Cette methode permet de générer aléatoirement 10 articles avec un titre, un contenu, l'id de l'auteur et l'id de la categorie.
9.times do
  article = Article.create!(title: Faker::Book.title, content: Faker::FamousLastWords.last_words, user_id: 4, categorie_id: 2)
end

# Cette methode permet de générer aléatoirement 15 commentaires avec l'id de l'utilisateur et l'id de l'article.
14.times do
  comment = Comment.create!(content: Faker::Hobbit.quote, user_id: 4, article_id: 2)
end

# Cette methode permet de générer aléatoirement 15 likes avec l'id de l'utilisateur et l'id de l'article.
14.times do
	like = Like.create!(user_id: 3, article_id: 5)
end