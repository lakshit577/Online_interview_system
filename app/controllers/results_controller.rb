class ResultsController < ApplicationController
  def show
    @student_id = params[:student_id]
    # Use @student_id as needed in the show action
  end
end
