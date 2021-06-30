class CreateSnakes < ActiveRecord::Migration[6.1]
  def change
    create_table :snakes do |t|
      t.string :name
      t.string :color
      t.string :head
      t.string :tail

      t.timestamps
    end
  end
end
