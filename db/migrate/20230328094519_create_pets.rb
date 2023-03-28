class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :image
      t.string :name
      t.string :breed
      t.string :age
      t.string :gender
      t.string :house_trained
      t.text :description
      t.string :animal_type

      t.timestamps
    end
  end
end
