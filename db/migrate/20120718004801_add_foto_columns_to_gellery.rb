class AddFotoColumnsToGellery < ActiveRecord::Migration
  def change
    
     add_column :galleries, :foto_file_name, :string
    add_column :galleries, :foto_content_type, :string
    add_column :galleries, :foto_file_size, :integer
    add_column :galleries, :foto_updated_at, :datetime
  end
end
