class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :abstract
      t.text :content
      t.integer :category_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
