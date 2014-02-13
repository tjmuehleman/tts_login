class AddNumEntriesToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :num_entries, :integer
  end
end
