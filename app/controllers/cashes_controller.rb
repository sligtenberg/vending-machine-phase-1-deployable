class CashesController < ApplicationController
  def index
    render json: Cash.all
  end

  def update
    cash = Cash.find(params[:id])
    cash.update(cash_params)
    render json: cash
  end

  private

  # strong params
  def cash_params
    params.permit(:quantity)
  end
end
