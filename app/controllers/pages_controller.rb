class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :purchase ]

  def home
  end

  def purchase

  end
end
