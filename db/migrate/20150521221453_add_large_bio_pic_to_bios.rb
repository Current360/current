class AddLargeBioPicToBios < ActiveRecord::Migration
  def change
    add_column :bios, :large_bio_pic, :string
  end
end
