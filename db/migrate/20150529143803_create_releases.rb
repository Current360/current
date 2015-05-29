class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :title
      t.text :content
      t.string :about

      t.timestamps
    end
  end
end
