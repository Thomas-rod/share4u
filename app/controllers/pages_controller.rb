class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :purchase, :instructions ]

  def home
  end

  def purchase

  end

  def instructions

  end
end
