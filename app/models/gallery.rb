class Gallery < ActiveRecord::Base
  attr_accessible :nome, :foto
  
  has_attached_file :foto, :styles => {:medium => "300x300" , :thumb => "166x130" , :original => "940x340"}
  
end
