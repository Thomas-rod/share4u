class ProfilesController < ApplicationController
  require "vpim/vcard"
  before_action :set_profil, only: [:show, :update]

  def index
  end

  def show
    @blue_page = true
    authorize @profile
    @socials = socials_not_activated
    @networks = Network.select{ |n| n.profile.user == current_user}
    @network = Network.new()
    @magnet_info = true
    @new_vcard = Vcard.new()
    @vcard = Vcard.find_by(profile: current_user.profile)
  end

  def new
    @blue_page = true
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
      redirect_to profile_path(@profile), notice: "Well done ! Now let's go and create your socials"
    else
      render :new, notice: "Whatch out ! You forgot to fulfill infomrations"
    end
  end

  def update
    if @profile.update(profil_params)
      redirect_to profile_path(@profile), notice: "Perfect ! Your profile has been updated"
    else
      redirect_to profile_path(@profile), notice: "Oupsy, something went wrong"
    end
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
