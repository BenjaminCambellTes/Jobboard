class SessionsController < ApplicationController
    def new
        @job = Jobs.new
    end

    def create
        @job = Jobs.new(job_params)
        if @job.save 
           session[:job_id] = @job.id
           redirect_to root_path, notice: "Successfully submitted the job"
        else
           render :new
        end
   end
end