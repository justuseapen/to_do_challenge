class TasksController < ApplicationController
  def index
    @tasks = Task.find(:all, :conditions => {:completed => false})
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    end
  end
  def update
    @task = Task.find(params[:id])
    @task.mark_complete
    if @task.save
      redirect_to index, notice:"Task marked complete!"
    else
      redirect_to index, notice:"Something went wrong"
    end
  end
  def delete
  end
  private
  def task_params
    params.require(:task).permit(:title)
  end
end
