require 'rails_helper'

RSpec.describe Lead, type: :model do
	context 'validation tests' do
		it 'ensures name presence' do
			lead = Lead.new(email: "matt@pokora.me", job_post: "Musician", company: "Skyrock").save
			expect(lead).to eq(false)
		end
		it 'ensures email presence' do
			lead = Lead.new(name: "Matt Pokora", job_post: "Musician", company: "Skyrock").save
			expect(lead).to eq(false)
		end
		it 'ensures job post presence' do
			lead = Lead.new(name: "Matt Pokora", email: "matt@pokora.me", company: "Skyrock").save
			expect(lead).to eq(false)
		end
		it 'ensures company presence' do
			lead = Lead.new(name: "Matt Pokora", email: "matt@pokora.me", job_post: "Musician").save
			expect(lead).to eq(false)
		end
		it 'should be valid' do
			lead = Lead.new(name: "Matt Pokora", email: "matt@pokora.me", job_post: "Musician", company: "Skyrock").save
			expect(lead).to eq(true)
		end


	end

	context 'scope tests' do
	end

end
