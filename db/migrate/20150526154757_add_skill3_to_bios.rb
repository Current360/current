class AddSkill3ToBios < ActiveRecord::Migration
  def change
    add_column :bios, :skill3, :string
  end
end
