class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.text :description
      t.string :flag_image
      t.string :captitol_name
      t.integer :population

      t.timestamps
    end
  end
end
