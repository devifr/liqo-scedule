class MateriKultumsController < AdminController
  before_action :set_materi_kultum, only: [:show, :edit, :update, :destroy]
  
  def index
    @materi_kultums = MateriKultum.all
  end

  def show
  end

  def new
    @materi_kultum = MateriKultum.new
  end

  def edit
  end

  def create
    @materi_kultum = MateriKultum.new(materi_kultum_params)

    if @materi_kultum.save
      flash[:notice] = "Materi Kultum was successfully created."
      redirect_to materi_kultums_path
    else
      flash[:error] = @materi_kultum.errors.full_messages
      render :new
    end
  end

  def update
    if @materi_kultum.update(materi_kultum_params)
      flash[:notice] = 'Materi Kultum was successfully updated.'
      redirect_to materi_kultums_path
    else  
      flash[:error] = @materi_kultum.errors.full_messages
      render :edit
    end
  end

  def destroy
    @materi_kultum.destroy
    flash[:notice] = 'MateriKultum was successfully destroy.'
    redirect_to materi_kultums_path
  end

  private
    def set_materi_kultum
      @materi_kultum = MateriKultum.find(params[:id])
    end

    def materi_kultum_params
      params.require(:materi_kultum).permit(:tipe, :title)
    end

end