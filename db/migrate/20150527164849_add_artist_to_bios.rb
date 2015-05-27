class AddArtistToBios < ActiveRecord::Migration
  def change
    add_column :bios, :artist, :integer
  end
end
