class CreateGameParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :game_participants do |t|
      t.references :game, null: false, foreign_key: true
      t.references :snake, null: false, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
