class Post < ActiveRecord::Base
  attr_accessible :autor, :conteudo, :data_cadastro, :subtitulo, :titulo
end
