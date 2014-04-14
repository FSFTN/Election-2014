class AddApprovedToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :approved, :boolean, default: true
  end
end
