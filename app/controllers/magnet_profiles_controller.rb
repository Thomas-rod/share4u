class MagnetProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @magnet_profile = MagnetProfile.find(params[:id])
    if @magnet_profile.profile.nil?
      redirect_to new_user_session_path
    else
      @networks = @magnet_profile.profile.networks
    end
  end

  def create
    @magnet_profile = MagnetProfile.new(params_magnet_profiles)
    if @magnet_profile.save!
      redirect_to magnet_profile_path(@magnet_profile)
    end
  end

  def update
    @navbar_none = true
    @magnet_profile = MagnetProfile.find(params[:id])
    if check_profile_attachment?(@magnet_profile)
      @magnet_profile.update(profile: current_user.profile)
      redirect_to profile_path(@magnet_profile.profile), notice: "Félicitation ! Ton magnet a été activé. Tu peux maintenant partager avec style."
    else
      redirect_to profile_path(current_user.profile), notice: "Tu as déjà un magnet d'activé ! Tu ne peux pas en avoir plusieurs."
    end

  end

  private

  def params_magnet_profiles
    params.require(:magnet_profile).permit(:profile, :magnet)
  end

  ## VALIDATION TO KNOW IF PROFILE ALREADY HAVE A MAGNET_PROFILE
  def check_profile_attachment?(magnet_profile)
    magnet_profile.profile.nil? && current_user.profile.magnet_profile.nil? ? true : false
  end
end
