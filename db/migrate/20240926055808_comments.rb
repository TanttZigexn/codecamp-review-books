class Comments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.references :book, null: false, foreign_key: true
      t.text :content, null: false
      t.string :user_name, null: false

      t.timestamps
    end
  end
end
