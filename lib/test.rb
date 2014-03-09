def weather
		@weather_status = 1 * rand(10)
		if @weather_status < 7
			puts "weather is sunny. Airport is open."
		else
			puts "weather is stormy. Airport is closed."
		end
	end

	weather