class HomeController < ApplicationController
  before_filter :load_resources
  def index
    # @galleries_index = Gallery.all(:order => "created_at DESC", :limit => 10)
      @galleries_index = Gallery.order("created_at DESC").paginate :page => params['page'], :per_page => 21
    
  end

   def load_resources
    @galleries_footer = Gallery.find(:all, :limit => 6)
  end


  
end
