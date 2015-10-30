class PokemonsController < ApplicationController
	def capture
		id = params[:id]
		@pokemon = Pokemon.find(id)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end
	
	def damage
		id = params[:id]
		@pokemon = Pokemon.find(id)
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.health = @pokemon.health-10
		end 
		@pokemon.save
	
		redirect_to :back
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to :controller => 'trainers', :action => 'show', id: current_trainer.id
		else 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		    redirect_to :controller => 'pokemons', :action => 'new'
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end


end 
