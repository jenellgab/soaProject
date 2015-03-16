class CatchesController < ApplicationController

	def index 
	 
	@creatures = Creature.all
	
	end


end
