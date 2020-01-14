class Animals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column(:name, :string)
    end
  end
end
