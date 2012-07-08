class RottingzombiesController < ApplicationController

	def index
		@rotting_zombies = Zombie.rotting
	end


end
