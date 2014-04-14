class Candidate < ActiveRecord::Base
  belongs_to :party
	has_many :constituencies
end
