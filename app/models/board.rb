class Board
	def initialize
	    @panels = { :backlog => Panel.new('Backlog', nil)}
	end
	
	def getPanel(key)
		@panels[key]
	end
	
	def panels
		@panels
	end
end
