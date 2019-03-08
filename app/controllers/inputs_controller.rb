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
		 @tempName = :name 
		 @tempEmail = :email 
		 @tempPhone = :phone 
		 puts @tempPhone

		# que = Queue.new
		GuestsCleanupJob.perform_later("hello")
		redirect_to root_path

	end
	 def input_params
		params.require(:input).permit(:name, :email, :phone)
		
	end
end
