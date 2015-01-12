class CreateCommoditycategories < ActiveRecord::Migration
  def change
    create_table :commoditycategories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
