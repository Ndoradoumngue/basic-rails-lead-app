class Lead < ApplicationRecord
	translates :job_post

	def self.search(search)
		if search
			where(["name LIKE ? or email LIKE ? or job_post LIKE ? or company LIKE ?","%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
		else
			all			
		end		
	end
end
