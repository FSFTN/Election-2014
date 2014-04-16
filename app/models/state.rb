class State < ActiveRecord::Base
	has_many :constituencies, dependent: :destroy
  validates :name, presence: true
end
