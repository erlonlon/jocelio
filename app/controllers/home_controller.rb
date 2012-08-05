class HomeController < ApplicationController
  
  def index
    # @galleries_index = Gallery.all(:order => "created_at DESC", :limit => 10)
      @galleries_index = Gallery.order("created_at DESC").paginate :page => params['page'], :per_page => 10
    
  end
end
