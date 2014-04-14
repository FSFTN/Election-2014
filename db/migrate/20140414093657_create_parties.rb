class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :symbol
      t.string :manifesto
      t.string :official_website
      t.string :wikipedia_link
      t.string :president

      t.timestamps
    end
  end
end
