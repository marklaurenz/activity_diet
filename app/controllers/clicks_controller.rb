class ClicksController < ApplicationController
  def index
    @clicks = Click.all
  end

  def show
    @click = Click.find(params[:id])
  end

  def new
    @click = Click.new
  end

  def create
    @click = Click.new
    @click.user_id = params[:user_id]
    @click.activity_id = params[:activity_id]
    @click.activity = params[:activity]
    @click.click_time = params[:click_time]

    if @click.save
      redirect_to "/clicks", :notice => "Click created successfully."
    else
      render 'new'
    end
  end

  def edit
    @click = Click.find(params[:id])
  end

  def update
    @click = Click.find(params[:id])

    @click.user_id = params[:user_id]
    @click.activity_id = params[:activity_id]
    @click.activity = params[:activity]
    @click.click_time = params[:click_time]

    if @click.save
      redirect_to "/clicks", :notice => "Click updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @click = Click.find(params[:id])

    @click.destroy

    redirect_to "/clicks", :notice => "Click deleted."
  end
end
