class ToiletsController < ApplicationController
  before_action :fetch_toilet, only: %i[show destroy edit]

  def index
    @toilets = policy_scope(Toilet)
  end

  def show
    authorize @toilet
  end

  def new
    @toilet = Toilet.new
    authorize @toilet
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.owner_id = current_user.id
    authorize @toilet
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
    params.require(:toilet).permit(:name, :address, :description, :photo, :wifi, :reading_material, :air_con, :window, :floor_heating, :speakers, :photo_cache)
  end

  def fetch_toilet
    @toilet = Toilet.find(params[:id])
  end
end
