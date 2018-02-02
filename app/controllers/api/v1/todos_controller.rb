class Api::V1::TodosController < Api::V1::BaseController
  def index
    respond_with Todo.all
  end

  def create
    respond_with :api, :v1, Todo.create(item_params)
  end

  def destroy
    respond_with Todo.destroy(params[:id])
  end

  def update
    todo = Todo.find(params["id"])
    todo.update_attributes(item_params)
    respond_with todo, json: todo
  end

  private

  def item_params
    params.require(:item).permit(:id, :name, :description)
  end
end
