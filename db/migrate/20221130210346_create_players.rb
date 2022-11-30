class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :monster
      t.integer :initiative
      t.integer :hp
      t.string :languages
      t.string :perc
      t.string :inv
      t.string :ins
      t.integer :armor
      t.boolean :conc

      t.timestamps
    end
  end
end
