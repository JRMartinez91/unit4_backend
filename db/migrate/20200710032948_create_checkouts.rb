class CreateCheckouts < ActiveRecord::Migration[6.0]
  def change
    create_table :checkouts do |t|
      t.references :book, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true
      t.date :start
      t.date :due
      t.date :returned

      t.timestamps
    end
  end
end
