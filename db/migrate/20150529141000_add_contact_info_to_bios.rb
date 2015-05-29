class AddContactInfoToBios < ActiveRecord::Migration
  def change
    add_column :bios, :phone, :string
    add_column :bios, :email, :string
    add_column :bios, :cell, :string
  end
end
