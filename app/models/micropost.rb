class Micropost < ActiveRecord::Base
	belongs_to :user

	validates :user, presence: true
	validates :content, length: { maximum: 140, minimum: 10  }

	# def user_exists
	# 	errors.add(:user_id, "with ID was not found.") unless User.exists?(:user_id)
	# end
end
