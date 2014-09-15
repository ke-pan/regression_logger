class TestSetsController < ApplicationController

  def index
    @test_sets = TestSet.page(params[:page]).per(5)
  end

  def show
    @test_set = TestSet.find params[:id]
    @regressions = @test_set.regressions.page params[:page]
  end

  def new
    @test_set = TestSet.new
  end

  def create
    @test_set = TestSet.new(params.require(:test_set).permit(:name))
    if @test_set.save
      flash[:success] = "A test set has been created!"
      redirect_to test_sets_path
    else
      flash[:danger] = "Something wrong when create!"
      redirect_to new_test_set_path
    end
  end

end
