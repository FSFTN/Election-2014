class State < ActiveRecord::Base
	has_many :constituencies, dependent: :destroy
end
