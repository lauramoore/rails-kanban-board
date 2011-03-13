class Panel < ActiveRecord::Base
	def initialize(display_text, key) 
		@display_text = display_text
		@key = key
	end
	
	def get_stories
		#story controller get stories by state key.
	end
end
