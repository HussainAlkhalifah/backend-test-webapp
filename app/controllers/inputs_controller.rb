class InputsController < ApplicationController
	def index

		
	end

	def new

	end
	def show
		#@input = Input.find(params[:id])
		
	end

	def create
		#render plain: params[:inputs].inspect
		tempName = params[:input][:name] 
		tempEmail = params[:input][:email] 
		tempPhone = params[:input][:phone] 
		puts "=============this is from create"
		puts tempName

		#@input = Input.new(input_params)
		#@input.save
		# que = Queue.new
		GuestsCleanupJob.set(wait: 1.minutes).perform_later(tempName, tempEmail, tempPhone)
		@tempName = params[:input][:name] 
		@tempEmail = params[:input][:email] 
		@tempPhone = params[:input][:phone] 

		#@input_s = 1
		#redirect_to @input
		redirect_to action: "show", id: 5
	end

	def input_params
		params.require(:input).permit(:name, :email, :phone)
		
	end
	def insert_elements(input)
		@input = input
		@input.save

		
	end
	def notify(msg)

		
	end
end
