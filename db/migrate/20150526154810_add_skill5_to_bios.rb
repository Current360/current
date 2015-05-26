class AddSkill5ToBios < ActiveRecord::Migration
  def change
    add_column :bios, :skill5, :string
  end
end
