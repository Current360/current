class AddDribbbleToBios < ActiveRecord::Migration
  def change
    add_column :bios, :dribbble, :string
  end
end
