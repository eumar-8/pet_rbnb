class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.string :species
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
