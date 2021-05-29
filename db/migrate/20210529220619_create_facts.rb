class CreateFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :facts do |t|
      t.string :title
      t.text :details
      t.float :lat
      t.float :lng
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
