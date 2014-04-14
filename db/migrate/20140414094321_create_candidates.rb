class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.references :party, index: true
      t.string :avatar
      t.string :wikipedia_link
      t.string :age

      t.timestamps
    end
  end
end
