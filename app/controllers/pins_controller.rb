class PinsController < ApplicationController

  before_action :authenticate_user!

  def index
    if params[:search_text].present?
      @pins = Pin.search(params[:search_text]).page(params[:page])
    else
      @pins = @current_user.pins.page(params[:page])
    end
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params.require(:pin).permit(:photo, :url)
    @pin.user = @current_user
    if @pin.save
      redirect_to root_path, notice: "so whatcha watcha watcha want..."
    else
      render :new
    end
  end



end
