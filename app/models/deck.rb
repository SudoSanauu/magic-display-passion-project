class Deck < ActiveRecord::Base
	belongs_to :user
	has_many :cards

	validates :user_id, presence: true
	validates :name, presence: true
end
