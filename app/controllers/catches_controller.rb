class CatchesController < ApplicationController

	def index 
	@creatures = Creature.all
	 
    render template: "catches/index"
	end
end
