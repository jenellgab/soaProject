class CatchesController < ApplicationController

 
	def index
	 redirect_to action: "new"
	end

	def new 
	 
    	render template: "catches/new"

	end

	
	def show
	@place = Location.find_by(gps_coordinate: params[:gps])
	@l_id = @place.id
	@cl = CreatureLocation.find_by(location_id: @l_id)
	@c = @cl.creature_id
	@creature = Creature.find(@c)
	

	render template: "catches/show"
	end
	
	def caught
	
	@pet = UserCreature.new
	@pet.user = current_user
	@pet.creature_id = @c
	flash[:notice] = "You have successfully..."
    	redirect_to root_url

	render template: "catches/new"
	
	end




end
