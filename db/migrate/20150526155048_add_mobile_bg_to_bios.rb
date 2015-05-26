class AddMobileBgToBios < ActiveRecord::Migration
  def change
    add_column :bios, :mobile_bg, :string
  end
end
