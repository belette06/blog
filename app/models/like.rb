class Like < ApplicationRecord
	# belongs_to permet à chaque Like d'être lié à un utilisateur et à un article
	belongs_to :user
	belongs_to :article
end
