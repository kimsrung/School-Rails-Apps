class TutorsController < ApplicationController
  def index
  	@tutor = Tutor.new
  end
end
