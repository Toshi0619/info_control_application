class GcustomersController < ApplicationController
  def new
    @gcustomer = Gcustomer.new
  end

  def create
    @gcustomer = Gcustomer.new(gcustomer_params)
    binding.pry
    if @gcustomer.save #保存されるとマイページへリダイレクト
      redirect_to root_path
    else 
      render action: :new
    end
  end

  def edit
  end

  private

  def gcustomer_params
    params.require(:gcustomer).permit(:name, :address, :category_id, :firstdate, :employee, :sales, :settlement_id).merge(customer_id: params[:customer_id])
  end
end
