class RemoveAboutFromRelease < ActiveRecord::Migration
  def change
    remove_column :releases, :about, :string
  end
end
