class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :admin

      t.timestamps
    end
  end
end
