class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @toilets = Toilet.all
  end

  def test
  end

  def profile
  end
end
