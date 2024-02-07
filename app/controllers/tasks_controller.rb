class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def new
    @task = Task.new
  end
  
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save 
      redirect_to tasks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :status)
  end
end
