class ObjectivesController < ApplicationController
	before_action :set_course, :only=>[:index, :create]
	def index

		@objectives=@course.objectives


	end
	def new
		@objective=@course.objectives.new
	end
	def create
		@objective=@course.objectives.new(objective_params)
		if @objective.save
			redirect_to @objective
		else
			render :create
		end
	end
	def edit
		
	end
	def update
		
	end

	private
	def set_course
		@course=Course.find(params[:course_id])
	end
	def objective_params
		params.require(:objective).permit(:description)
	end
end
