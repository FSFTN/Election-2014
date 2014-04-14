class Constituency < ActiveRecord::Base
	has_and_belongs_to_many :candidates
  belongs_to :state
  validates :name, presence: :true
  validates :state_id, presence: :true
end
