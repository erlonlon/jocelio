class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :email
      t.string :assunto
      t.datetime :data_contato
      t.text :conteudo

      t.timestamps
    end
  end
end
