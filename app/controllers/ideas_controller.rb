class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    # @solution = Activity.all.sample(1)
    # find an activity at random from the activity list, get that activities image_url and description, report the image and then description
    @solution = Activity.where( :id => rand(1..Activity.count))
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new

    if @idea.save
      redirect_to "/ideas", :notice => "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])


    if @idea.save
      redirect_to "/ideas", :notice => "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @idea = Idea.find(params[:id])

    @idea.destroy

    redirect_to "/ideas", :notice => "Idea deleted."
  end
end
