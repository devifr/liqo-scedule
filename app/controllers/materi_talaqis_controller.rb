class MateriTalaqisController < AdminController
  before_action :set_materi_talaqi, only: [:show, :edit, :update, :destroy]
  
  def index
    @materi_talaqis = MateriTalaqi.all
  end

  def show
  end

  def new
    @materi_talaqi = MateriTalaqi.new
  end

  def edit
  end

  def create
    @materi_talaqi = MateriTalaqi.new(materi_talaqi_params)

    if @materi_talaqi.save
      flash[:notice] = "Materi Talaqi was successfully created."
      redirect_to materi_talaqis_path
    else
      flash[:error] = @materi_talaqi.errors.full_messages
      render :new
    end
  end

  def update
    if @materi_talaqi.update(materi_talaqi_params)
      flash[:notice] = 'Materi Talaqi was successfully updated.'
      redirect_to materi_talaqis_path
    else  
      flash[:error] = @materi_talaqi.errors.full_messages
      render :edit
    end
  end

  def destroy
    @materi_talaqi.destroy
    flash[:notice] = 'MateriTalaqi was successfully destroy.'
    redirect_to materi_talaqis_path
  end

  private
    def set_materi_talaqi
      @materi_talaqi = MateriTalaqi.find(params[:id])
    end

    def materi_talaqi_params
      params.require(:materi_talaqi).permit(:tipe, :title)
    end

end