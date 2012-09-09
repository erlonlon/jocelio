#encoding: utf-8
class Gallery < ActiveRecord::Base
  attr_accessible :nome, :foto
  
  has_attached_file :foto, :styles => {:medium => "300x300#" , :thumb => "166x166#" }

   validates_presence_of :nome
   validates_attachment_presence :foto
   validates_attachment_size :foto, :less_than => 1.megabyte
   validates_attachment_content_type :foto, :content_type => %w(image/png image/jpeg image/gif)

   default_scope order ("created_at DESC")
end
