class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @task.save
  end
end
