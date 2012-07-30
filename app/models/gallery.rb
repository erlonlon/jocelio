#encoding: utf-8
class Gallery < ActiveRecord::Base
  attr_accessible :nome, :foto
  
  has_attached_file :foto, :styles => {:medium => "300x300" , :thumb => "166x130", }
  

 validates_attachment_content_type :foto, :content_type => ["image/jpg", "image/jpeg"]
# diz o tipo de extensão que o sistema aceita para validar o upload.

 validates_attachment_size :foto, :less_than => 1.megabyte

end
