class ProfilesController < ApplicationController
  before_action :set_profil, only: [:show, :update]
  def show
  end

  def index
  end

  def create
  end

  def update
  end

  private

  def profil_params
    params.require(:profile).permit(:first_name, :last_name, :user)
  end

  def set_profil
    @profil = Profile.find(params[:id])
  end
end
