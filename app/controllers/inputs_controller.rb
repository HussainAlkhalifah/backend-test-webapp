class InputsController < ApplicationController
	def index

		
	end

	def new

	end
	def show
		
	end

	def create
		tempName = params[:input][:name] 
		tempEmail = params[:input][:email] 
		tempPhone = params[:input][:phone] 
		#for debugging
		# puts "=============this is from create"
		# puts tempName


		GuestsCleanupJob.set(wait: 1.minutes).perform_later(tempName, tempEmail, tempPhone)
		@tempName = params[:input][:name] 
		@tempEmail = params[:input][:email] 
		@tempPhone = params[:input][:phone] 


		redirect_to action: "show", id: 1
	end

	def input_params
		params.require(:input).permit(:name, :email, :phone)
		
	end
	def insert_elements(input)
		@input = input
		@input.save

		
	end
	def notify(msg)
		# no time to implement, will need websockets 
		
	end
end
