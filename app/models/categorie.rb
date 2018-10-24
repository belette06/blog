class Categorie < ApplicationRecord
	# has_ many permet à chaque Categorie d'avoir plusieurs articles
	has_many :article
end
