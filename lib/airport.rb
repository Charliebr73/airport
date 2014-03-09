class Airport
	require_relative './weather'

	def open?
		weather_status = Weather.new
		true if weather_status.weather == "sunny"
	end

	def closed?
		!open?
	end

	def accept_landing?
		open?
	end

	def reject_landing?
		raise "Airport is close due to bad weather." if @reject_landing
		@reject_landing = true
	end

end