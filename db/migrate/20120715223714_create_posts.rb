class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :conteudo
      t.string :autor
      t.datetime :data_cadastro

      t.timestamps
    end
  end
end
