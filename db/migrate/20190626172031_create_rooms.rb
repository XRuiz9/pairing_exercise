class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
    	t.integer :roomnum
    	t.integer :bedrooms
    	t.integer :bathrooms
    	t.integer :size
    	t.integer :capacity
    	t.integer :cost
      t.timestamps
    end
  end
end
