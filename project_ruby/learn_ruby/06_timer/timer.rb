class Timer
	attr_accessor :seconds
 	def initialize
  		@seconds = 0
	end
	def time_string
	hours=@seconds/3600
	@seconds= @seconds-(hours*3600)
	
	minutes=@seconds/60
	@seconds=@seconds-(minutes*60)
	
	seconds=@seconds
	
	if hours<10
		hours="0" +hours.to_s
	else
		hours=hours.to_s
	end
	if minutes<10
		minutes="0" +minutes.to_s
	else
		minutes=minutes.to_s
	end
	if seconds<10
		seconds="0" +seconds.to_s
	else
		seconds=seconds.to_s
	end
	return hours + ":" + minutes + ":" + seconds
end
end
