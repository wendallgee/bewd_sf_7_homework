class RockPaperScissorController < ApplicationController
end

	def new
		@secret_numbers = secret_numbers
	end

	def show
		#get a random number from 1-10
		@secret_number = secret.numbers.sample
		@chosen_number = params[:id].to_i
	end

	private

	#select number randomly from array
	def secret_numbers
		(1..5).to_a 
	end

	def is_winner?
		@secret_number == @chosen_number
	end

end