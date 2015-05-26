class DropSkill5FromBios < ActiveRecord::Migration
  def change
    remove_column :bios, :skill5, :string
  end
end
