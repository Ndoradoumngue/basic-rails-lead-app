class Lead < ApplicationRecord
	translates :job_post

	validates :name, presence: true
	validates :email, presence: true
	validates :job_post, presence: true
	validates :company, presence: true

	def self.search(search)
		if search
			where(["name LIKE ? or email LIKE ? or job_post LIKE ? or company LIKE ?","%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
		else
			all			
		end		
	end
end
