class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new
    @activity.description = params[:description]
    @activity.image_url = params[:image_url]
    @activity.min_people = params[:min_people]
    @activity.season = params[:season]
    @activity.zip = params[:zip]
    @activity.website = params[:website]

    if @activity.save
      redirect_to "/activities", :notice => "Activity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.description = params[:description]
    @activity.image_url = params[:image_url]
    @activity.min_people = params[:min_people]
    @activity.season = params[:season]
    @activity.zip = params[:zip]
    @activity.website = params[:website]

    if @activity.save
      redirect_to "/activities", :notice => "Activity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])

    @activity.destroy

    redirect_to "/activities", :notice => "Activity deleted."
  end

  def my_favorites
    @activities = current_user.favorite_activities
  end
end
