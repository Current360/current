class AddSlugToBios < ActiveRecord::Migration
  def change
    add_column :bios, :slug, :string
    add_index :bios, :slug, unique: true
  end
end
