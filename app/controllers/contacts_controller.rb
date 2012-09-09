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

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contato salvo com sucesso, aguarde nosso retorno.' }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def load_resources
    @galleries_footer = Gallery.find(:all, :limit => 6)
      end

 
end
