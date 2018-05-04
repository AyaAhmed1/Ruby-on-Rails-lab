class User < ApplicationRecord
	validates :name, :last_name, presence: true
	validates :name, uniqueness: {scope: [:last_name]}

	enum gender: {male: 0, female: 1, any: 2}

	before_save :update_full_name



	private

	def update_full_name
		self.full_name = self.name + " " + self.last_name
	end
end
