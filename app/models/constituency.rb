class Constituency < ActiveRecord::Base
	has_and_belongs_to_many :candidates
  belongs_to :state
end
