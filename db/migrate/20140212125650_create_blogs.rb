class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :subject
      t.text :entry

      t.timestamps
    end
  end
end
