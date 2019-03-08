class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
  #   	@@input = Input.new(params.require(:input).permit(:name, :email, :phone))
		# @@input.save
		puts "obj"
		sleep 5
  end
end
