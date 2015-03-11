class SchedulesController < AdminController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  
  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def edit
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      flash[:notice] = "Schedule was successfully created."
      redirect_to schedules_path
    else
      flash[:error] = @schedule.errors.full_messages
      render :new
    end
  end

  def update
    if @schedule.update(schedule_params)
      flash[:notice] = 'Schedule was successfully updated.'
      redirect_to schedules_path
    else  
      flash[:error] = @schedule.errors.full_messages
      render :edit
    end
  end

  def destroy
    @schedule.destroy
    flash[:notice] = 'Schedule was successfully destroy.'
    redirect_to schedules_path
  end

  private
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:nama, :code, :alamat, :no_telp, :pin_bb, :facebook, :email)
    end

end