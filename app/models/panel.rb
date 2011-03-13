class Panel
	def initialize(display_text, key) 
		@display_text = display_text
		@key = key
		@stories = nil
	end
	def display_text
		@display_text
	end
	def key
		@key
	end
	def stories
		#story controller get stories by state key.
		@stories
	end
end
