class Article < ApplicationRecord
	# belongs_to permet à chaque article d'être lié à un utilisateur et à une categorie
	belongs_to :user
	belongs_to :categorie
	# has_ many permet à chaque article d'avoir plusieurs commentaires et plusieurs likes
	has_many :comments
	has_many :likes
end
