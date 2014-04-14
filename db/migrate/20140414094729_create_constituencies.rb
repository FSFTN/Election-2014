class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.references :state, index: true
      t.string :wikipedia_link

      t.timestamps
    end
  end
end
