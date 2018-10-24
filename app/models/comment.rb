class Comment < ApplicationRecord
	# belongs_to permet à chaque Comment d'être lié à un utilisateur et à un article
	belongs_to :user
	belongs_to :article
end
