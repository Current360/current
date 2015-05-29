class AddLandingImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :landing_image, :string
  end
end
