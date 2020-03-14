class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :name
      t.string :description
      t.string :release_date
      t.decimal :price

      t.timestamps
    end
  end
end
