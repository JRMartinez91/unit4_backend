class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :pubdate
      t.string :genre
      t.integer :isbn

      t.timestamps
    end
  end
end
