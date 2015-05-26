class AddOrderToBios < ActiveRecord::Migration
  def change
    add_column :bios, :order, :integer
  end
end
