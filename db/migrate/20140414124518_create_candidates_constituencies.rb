class CreateCandidatesConstituencies < ActiveRecord::Migration
  def change
    create_table :candidates_constituencies do |t|
      t.references :candidate, index: true
      t.references :constituency, index: true

      t.timestamps
    end
  end
end
