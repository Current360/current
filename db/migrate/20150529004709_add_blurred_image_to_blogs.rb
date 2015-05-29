class AddBlurredImageToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blurred_image, :string
  end
end
