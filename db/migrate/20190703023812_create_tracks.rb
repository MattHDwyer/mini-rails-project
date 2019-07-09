class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.float :length

      t.timestamps
    end
  end
end
