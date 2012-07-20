class Contact < ActiveRecord::Base
  attr_accessible :assunto, :conteudo, :data_contato, :email, :nome
end
