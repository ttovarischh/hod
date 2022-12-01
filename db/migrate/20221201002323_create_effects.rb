class CreateEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :effects do |t|
      t.text :name
      t.string :descr

      t.timestamps
    end
  end
end
