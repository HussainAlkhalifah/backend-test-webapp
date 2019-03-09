class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(tempName, tempEmail, tempPhone)
  		# for debugging 
		# puts "================== this is from perform"
		# puts tempName
		# puts tempEmail
		controller = InputsController.new
		input = Input.create name: tempName, email: tempEmail, phone: tempPhone
    	controller.insert_elements(input)
  end
end
