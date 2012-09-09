class Admin::ContactsController < Admin::BaseController

  def index  
   @contacts = Contact.order("created_at DESC").paginate :page => params['page'], :per_page => 20
   
      respond_with @contacts
  end

 
  def show
    @contact = Contact.find(params[:id])
    respond_with @contact

   
  end 

 
  
 
end
