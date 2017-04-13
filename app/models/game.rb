class Game < ApplicationRecord
	def finishGame
		self.winner = "Ничья"
		if (man_points > woman_points) 
			self.winner = man_name
		end
		if (woman_points > man_points) 
			self.winner = woman_name
		end
	end
end
