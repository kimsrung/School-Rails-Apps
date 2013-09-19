class ObjectivesController < ApplicationController
	before_action :set_course, :only=>[:index, :create, :destroy]
	before_action :set_objective, :only=>[ :edit, :update, :destroy]
	
	def index
		@objective=@course.objectives.new
		@objectives=@course.objectives
	end
	
	def create
		@objective=@course.objectives.new(objective_params)
		if @objective.save
			redirect_to course_objectives_path(@course)
		else
			render :create
		end
	end
	def edit
		
	end
	def update
		
	end
	def destroy

		@objective.destroy
		redirect_to course_objectives_path(@course)
	end
	private
	def set_course
		@course=Course.find(params[:course_id])
	end
	def set_objective
		@objective=Objective.find(params[:id])
	end
	def objective_params
		params.require(:objective).permit(:description)
	end
end
