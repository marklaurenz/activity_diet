class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @solution = Activity.all.sample(1)
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
