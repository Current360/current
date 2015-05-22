class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :category
      t.integer :author
      t.string :blog_picture
      t.timestamps
    end
  end
end
