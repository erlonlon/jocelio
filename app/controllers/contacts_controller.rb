class ContactsController < ApplicationController
 before_filter :load_resources
  def index  
      @contact = Contact.new
      respond_with @contacts
  end

 
  def show
    @contact = Contact.find(params[:id])
    respond_with @contact

   
  end 

 
  def create
   
    @contact = Contact.new(params[:contact])
    flash[:notice] = "Contato enviado com sucesso." if @contact.save
    respond_with @contact, :location => contact_path(@contact)
    
  end

  def load_resources
    @galleries_footer = Gallery.find(:all, :limit => 6)
      end

 
end
