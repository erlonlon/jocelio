class HomeController < ApplicationController
  
  def index
     @galleries = Gallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galleries }
    end
    
  end
end
