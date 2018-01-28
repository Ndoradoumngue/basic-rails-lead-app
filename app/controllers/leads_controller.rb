class LeadsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :find_lead, only: [:show, :edit, :update, :destroy]

	def index
		@lead = Lead.search(params[:search])
	end

	def new
		@lead = Lead.new
	end

	def create

		@lead = Lead.new lead_params

		if @lead.save
			redirect_to @lead, notice: "Contact saved!"
		else
			render 'new', notice: "An error occured!"
		end
			
	end

	def show

	end

	def edit		

	end

	def update

		if @lead.update lead_params
			redirect_to @lead, notice: "Contact updated!"
		else
			render 'edit'
			
		end

	end

	def destroy
		@lead.destroy
		redirect_to leads_path
	end

	private

	def lead_params
		params.require(:lead).permit(:name, :email, :job_post, :company, :registered_on)
		
	end

	def find_lead
		@lead = Lead.find(params[:id])

	end
end


