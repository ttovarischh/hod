class CreatePlayerEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :player_effects do |t|
      t.belongs_to :player, foreign_key: true
      t.belongs_to :effect, foreign_key: true

      t.timestamps
    end
  end
end
