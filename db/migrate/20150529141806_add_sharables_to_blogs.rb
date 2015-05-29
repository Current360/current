class AddSharablesToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :share1, :string
    add_column :blogs, :share2, :string
  end
end
