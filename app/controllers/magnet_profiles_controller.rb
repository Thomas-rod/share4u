class MagnetProfilesController < ApplicationController

  def show
    @magnet_profile = MagnetProfile.find(params[:id])
  end

  def create
    @magnet_profile = MagnetProfile.new(params_magnet_profiles)
    if @magnet_profile.save!
      redirect_to magnet_profile_path(@magnet_profile)

    end

  end

  private

  def params_magnet_profiles
    params.require(:magnet_profile).permit(:profile, :magnet)
  end
end
