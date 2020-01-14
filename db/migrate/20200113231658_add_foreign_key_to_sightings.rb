class AddForeignKeyToSightings < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :sightings, :animals
  end
end
