class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.text :content
      t.datetime :date

      t.timestamps null: false
    end
  end
end
