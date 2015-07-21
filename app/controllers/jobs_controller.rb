class JobsController < ApplicationController

	
	def index
		@jobs = Job.all.order("created_at DESC")
	end


	def new
		@job = current_user.jobs.build
	end

	def create
		@job = current_user.jobs.build(job_params)
		if @job.save
			redirect_to jobs_path
		else
			render 'new'
		end
	end

	private

	def job_params
		params.require(:job).permit(:company, :position, :city, :contact)
	end


end
