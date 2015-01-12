class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps null: false
    end
  end
end
