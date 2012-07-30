class Contact < ActiveRecord::Base
  attr_accessible :assunto, :conteudo, :data_contato, :email, :nome
  
  validates_presence_of :assunto, :conteudo, :email, :nome
  validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

end
