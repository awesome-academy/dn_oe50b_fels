class LessionsController < ApplicationController
  def index
    @lessions = Lession.all
  end

  def show
    @lession = Lession.find_by(id: params[:id])
    @lession.presence || flash(:warning, t("courses.not_found"))
  end

  def new
    @lession = Lession.new
  end

  def edit
    @lession = Lession.find_by(id: params[:id])
    @lession
  end

  def create; end

  def update
    @lession = Lession.find_by(id: params[:id])
    if @lession.update(lession_params)
      redirect_to @lession
    else
      render :edit
    end
  end

  def destroy; end

  private

  def lession_params
    params.require(:lession).permit(:name, :description, :image, :duration)
  end
end
