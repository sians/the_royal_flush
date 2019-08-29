class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @toilets = Toilet.all
  end

  def test
  end

  def profile
    @toilets = Toilet.all.where(owner_id: current_user.id)
  end

  private


end
