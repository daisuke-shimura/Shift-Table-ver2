class DaysController < ApplicationController
  def index
    date = Date.today
    @date = (date + (8-date.wday))+14
    @today = Date.today+2
    @day = Day.where("start > ?", @today)
    #新規日程自動作成機能
    unless Day.exists?(start: @date)
      flash.now[:auto_message] = "自動作成"
      Day.create(start:  @date, finish: @date+6)
    end
  end

  def index2
    @today = Date.today+3
    @day = Day.where("start < ?", @today).page(params[:page])
  end

  def show
    @day = Day.find(params[:id])
    @user = User.all
    @job_comment = JobComment.where(day_id: @day.id)
  end

  def create
    day = Day.new(day_params)
    if day.save
      redirect_to request.referer
    else
      flash[:error_message] = "Error：既につくられた日程です"
      redirect_to request.referer
    end
  end

  def destroy
    Day.find(params[:id]).destroy
    redirect_to days_path
  end

  def update
    day = Day.find(params[:id])
    if day.limit == 1
      day.update(limit: 0)
    else
      day.update(limit: 1)
    end
    redirect_to days_path
  end

  private
  def day_params
    params.require(:day).permit(:start, :finish)
  end
end
