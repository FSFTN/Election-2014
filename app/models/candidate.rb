class Candidate < ActiveRecord::Base
  belongs_to :party
	has_and_belongs_to_many :constituencies
end
