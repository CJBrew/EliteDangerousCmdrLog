class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.string :economy
      t.string :government
      t.string :allegiance
      t.boolean :blackmarket
      t.text :notes

      t.timestamps null: false
    end
  end
end
