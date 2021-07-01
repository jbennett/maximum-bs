class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :external_id
      t.integer :timeout
      t.integer :width
      t.integer :height
      t.integer :snake_count
      t.string :mode
      t.timestamp :ended_at
      t.string :result

      t.timestamps
    end
  end
end
