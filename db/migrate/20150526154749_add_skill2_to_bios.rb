class AddSkill2ToBios < ActiveRecord::Migration
  def change
    add_column :bios, :skill2, :string
  end
end
