class SchoolsController < ApplicationController
  def index
  	# GET--show all the schools
  	@schools = School.all
  end

  def show
  	#GET--show a specific school
  	@school.find(params[:id])
  end

  def edit
  	#GET--should hsow a form to edit a school
  	@school.find(params[:id])
  end

  def update
  	#PUT--update column in a school
  	@school = School.new(school_params)
  	if @school.update
  		#succesfful save in our database
  		redirect_to school_path(@school)
  	else
  		render :edit
  	end
	end

  def new
  	#GET--should show a form to create a new school
  	@school =School.new
  end

  def create
  	#POST---creating a new school record in the database
  	@school = School.new(school_params)
  	if @school.save
  		#succesfful save in our database
  		redirect_to schools_path
  	else
  		render :new
  	end
  end

  def destroy
  	#method is responsible for deleting single school out of the database
		School.find(params[:id]).destroy
		redirect_to schools_path  
  end

  private

  def school_params
  	params.require(:school).permit(:name, :year_built)
  end
end
