class Gallery < ActiveRecord::Base
  attr_accessible :nome, :foto
  
  has_attached_file :foto, :styles => {:medium => "290x140" , :thumb => "200x110" , :original => "960x360"}
  
end
