class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(tempName, tempEmail, tempPhone)

		puts "================== this is from perform"
		puts tempName
		puts tempEmail
		#params[:input][:name] = tempName
		#params[:input][:email] = tempEmail
		#params[:input][:phone] = tempPhone 
		controller = InputsController.new
		input = Input.create name: tempName, email: tempEmail, phone: tempPhone
    	controller.insert_elements(input)
   		#Input.create name: tempName, email: tempEmail, phone: tempPhone
		# InputsController.insert_elements() 
  end
end
