class MakeSlugIndexBlogs < ActiveRecord::Migration
  def change
    add_index :blogs, :slug, unique: true
  end
end
