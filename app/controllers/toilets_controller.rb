class ToiletsController < ApplicationController
  before_action :fetch_toilet, only: %i[show destroy edit]

  def index
    @toilets = Toilet.all
  end

  def show
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    if @toilet.save
      redirect_to toilet_path(@toilet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @toilet.update(toilet_params)
    @toilet.save
  end

  def destroy
    @toilet.destroy
    redirect_to toilets_path
  end

  private

  def toilet_params
    params.require(:toilet).permit(:address, :description, :images)
  end

  def fetch_toilet
    @toilet = Toilet.find(params[:id])
  end
end
