class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  before_action :set_select, only: [:edit, :update, :new, :create]
  before_action :check_authenticate, only: [:edit, :update, :new, :create]
  
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

    def set_select
      @users = User.all.map{|u| [u.nama, u.id]}
      @materi_kultums = MateriKultum.all.map{|u| ["#{u.title} (#{u.tipe})", u.id]}
    end

    def check_authenticate
      redirect_to root_path unless current_admin
    end

    def schedule_params
      params.require(:schedule).permit(:date, :mc_id, :place, :kultum_id, :materi_kultum_id, :facebook, :email)
    end

end