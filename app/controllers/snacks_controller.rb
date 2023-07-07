class SnacksController < ApplicationController
  def index
    render json: Snack.all
  end

  def update
    #debugger
    snack = Snack.find(params[:id])
    snack.update(snack_params)
    render json: snack
  end

  private

  # strong params
  def snack_params
    params.permit(:name, :price, :quantity)
  end
end
