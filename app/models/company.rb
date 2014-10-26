class Company < ActiveRecord::Base
	has_many :garages
	has_many :users

	validates :name,	presence: true
end
