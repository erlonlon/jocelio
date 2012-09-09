class GalleriesController < ApplicationController 

  before_filter :load_resources
  def index
    @galleries = Gallery.order("created_at DESC").paginate :page => params['page'], :per_page => 49
    # @articles = Article.order("created_at  DESC").paginate :page=> params['page'], :per_page=>3
    respond_with @galleries
  end

  def load_resources
   @galleries_footer = Gallery.find(:all, :limit => 6)
  end

 
 
end
