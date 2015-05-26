class AddSkillValuesToBios < ActiveRecord::Migration
  def change
    add_column :bios, :skill1_value, :integer
    add_column :bios, :skill2_value, :integer
    add_column :bios, :skill3_value, :integer
    add_column :bios, :skill4_value, :integer
  end
end
