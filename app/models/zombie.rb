class Zombie < ActiveRecord::Base

	has_one :brain

	scope :rotting, where(rotting: true)
	scope :fresh, where("age < 20")
	scope :recent, order("created_at desc").limit(3)

	before_save :make_rotting

	def make_rotting
		if age > 20
			self.rotting = true
		end
	end
	
end
