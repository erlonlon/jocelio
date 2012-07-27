class HomeController < ApplicationController
  
  def index
     @galleries_index = Gallery.all(:order => "created_at DESC", :limit => 10)
    
  end
end
