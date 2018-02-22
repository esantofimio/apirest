class TodosController < ApplicationController
    def index
        todos = Todo.all
        render json: todos, status: 200
    end
    def show
        todo = Todo.find(params[:id])
        render json: todo, stauts: 200
    end
    def create
        todo = Todo.new(todo_params)
        if todo.save
            render json: todo, status: 201
        else
            render json: todo.erros, status: 500
    end
    def tod_params
        params.require(:todo).permit(:nam, :description, :duration, :deadline)
    end
end
end