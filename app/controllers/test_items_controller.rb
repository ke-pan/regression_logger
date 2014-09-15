class TestItemsController < ApplicationController

  def show
  end

  def new
    @test_sets = TestSet.recent
    @regressions = TestSet.recent.first.regressions
  end

  def create
    if regression = Regression.find(params[:regression_id])
      TestItem.import(params[:logfile], regression.id)
      redirect_to regression
    else
      flash[:danger] = "Can't find that regression!"
      redirect_to :new
    end
  end

  def update_regressions
    test_set = TestSet.find(params[:test_set_id])
    @regressions = test_set.regressions
    respond_to do |format|
      format.js
    end
  end

end
