class CatchesController < ApplicationController

 
	def index
	@pets = UserCreature.all
	 render template: "catches/index"
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
	@pet.nickname = params[:name]
	@pet.creature_id = 
	@pet.save!
	flash[:notice] = "You have successfully..."
    	redirect_to catches_path

	
	end


end
