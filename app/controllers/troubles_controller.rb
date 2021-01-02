class TroublesController < ApplicationController

  def new
    @trouble = Trouble.new
  end

  def create
    @trouble = Trouble.new(trouble_params)
    binding.pry
    if @trouble.save #保存されるとマイページへリダイレクト
      redirect_to root_path
    else 
      render action: :new
    end
  end

  private

  def trouble_params
    params.require(:trouble).permit(:title, :sdate, :detail, :content, :edate).merge(customer_id: params[:customer_id])
  end
end
