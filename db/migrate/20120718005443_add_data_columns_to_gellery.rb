class AddDataColumnsToGellery < ActiveRecord::Migration
  def change
    
    remove_column :galleries, :data_cadastro
  end
end
