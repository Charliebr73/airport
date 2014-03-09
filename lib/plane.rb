class Plane

	attr_accessor :flying

	def initialize
		@flying = true
	end

	def landed
		@flying = false
	end

	def take_off
		@flying = true
	end

	def current_status
		self.flying ? :flying : :landed
	end



end