class Weather

	@weather = 'sunny'

	def weather
		@weather_status = 1 * rand(5)
		if @weather_status < 4
			return "sunny"
		else
			@weather_status >4 
			return "stormy"
		end
	end

end