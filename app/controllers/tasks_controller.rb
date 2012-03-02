class TasksController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tasks = current_user.tasks
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def new
    @task = current_user.tasks.build
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def create
    @task = current_user.tasks.build(params[:task])

    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @task = current_user.tasks.find(params[:id])

    if @task.update_attributes(params[:task])
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy

    redirect_to tasks_url
  end
end
