class Gallery < ActiveRecord::Base
  attr_accessible :nome, :foto
  
  has_attached_file :foto, :styles => {:medium => "300x300" , :thumb => "166x130" , :original => "940x340"}
  
 
#scope :recent, limit(3).order("created_at ASC")
 #Gallery.reorder("data_cadastro ASC").limit(2)
 
 #Galllery.all(:order => "nome ASC", :limit => 2)
end
