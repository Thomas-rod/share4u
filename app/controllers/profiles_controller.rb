class ProfilesController < ApplicationController
  require "vpim/vcard"
  before_action :set_profil, only: [:show, :update]

  def index
  end

  def show
    authorize @profile
    @socials = socials_not_activated
    @networks = Network.select{ |n| n.profile.user == current_user}
    @network = Network.new()
    @magnet_info = true
    @new_vcard = Vcard.new()
    @vcard = Vcard.find_by(profile: current_user.profile)
  end

  def new
    if current_user.profile.nil?
      @profile = Profile.new()
    else
      redirect_to profile_path(current_user.profile)
    end
  end

  def create
    @profile = Profile.new(profil_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile), notice: "Super ! Maintenant on va créer ton espace "
    else
      render :new, notice: "Eh fait gaffe, tu as oublié de renseigner un champ"
    end
  end

  def update
  end

  private

  def profil_params
    params.require(:profile).permit(:first_name, :last_name, :user, :profile_picture, :magnet_bought)
  end

  def set_profil
    @profile = Profile.find(params[:id])
  end

  def socials_not_activated
    network_created = Network.select{ |n| n.profile == current_user.profile}
    social_activated = network_created.map do |n|
      n.social
    end
    all_social = Social.all
    split = all_social - social_activated
    return (all_social - social_activated)
  end

end
