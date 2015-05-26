class AddSkill1ToBios < ActiveRecord::Migration
  def change
    add_column :bios, :skill1, :string
  end
end
