class AgendasController < ApplicationController

	before_filter :load_resources
	def load_resources 
		  @galleries_footer = Gallery.find(:all, :limit => 6)

	end
end
