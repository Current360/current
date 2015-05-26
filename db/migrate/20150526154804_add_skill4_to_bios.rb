class AddSkill4ToBios < ActiveRecord::Migration
  def change
    add_column :bios, :skill4, :string
  end
end
