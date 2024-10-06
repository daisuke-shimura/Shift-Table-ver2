class DaysController < ApplicationController
  def index
    date = Date.today
    @date = (date + (8-date.wday))+14
    @today = Date.today+3
    @day = Day.all
  end

  def index2
    @day = Day.all
    @today = Date.today+3
  end

  def show
    @day = Day.find(params[:id])
    @user = User.all
    @job_comment = JobComment.all
  end

  def create
    day = Day.new(day_params)
    if day.save
      redirect_to request.referer
    else
      flash[:notice] = "既につくられた日程です"
      redirect_to request.referer
    end
  end

  def destroy
    Day.find(params[:id]).destroy
    redirect_to days_path
  end

  private
  def day_params
    params.require(:day).permit(:start, :finish)
  end
end
