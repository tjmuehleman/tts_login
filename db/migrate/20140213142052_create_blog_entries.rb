class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.integer :user_id
      t.integer :blog_id
      t.text :entry
      t.string :subject
      t.string :category

      t.timestamps
    end
  end
end
