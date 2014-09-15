class RegressionsController < ApplicationController

  def show
    @regression = Regression.find params[:id]
    @test_items = @regression.test_items.page(params[:page])
  end

  def new
    @regression = Regression.new
  end

  def create
    regression = Regression.new regression_params
    if regression.save
      flash[:success] = "A regression has been created!"
      redirect_to regressions_path
    else
      flash[:danger] = "Something wrong when create!"
      redirect_to new_regression_path
    end
  end

  private
  def regression_params
    params.require(:regression).permit([:name, :description, :test_set_id])
  end

end
