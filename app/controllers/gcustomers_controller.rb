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
    @gcustomer = Gcustomer.find(params[:id])
  end

  def update
    @gcustomer = Gcustomer.find(params[:id])
    if @gcustomer.update(gcustomer_params)
      redirect_to customer_path(@gcustomer.customer_id)
    else
      render :edit
    end
  end

  private

  def gcustomer_params
    params.require(:gcustomer).permit(:name, :address, :category_id, :firstdate, :employee, :sales, :settlement_id).merge(customer_id: params[:customer_id])
  end
end
