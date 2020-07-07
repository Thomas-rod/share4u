class ProfilesController < ApplicationController
  before_action :set_profil, only: [:show, :update]

  def index
  end

  def show
    authorize @profile
    @socials = Social.all
    @netowrks = Network.select{ |n| n.profile.user == current_user}
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
      redirect_to new_profile_network_path(@profile), notice: "Super ! Maintenant on va créer ton espace "
    else
      render :new, notice: "Eh fait gaffe, tu as oublié de renseigner un champ"
    end
  end

  def update
  end

  private

  def profil_params
    params.require(:profile).permit(:first_name, :last_name, :user, :profile_picture)
  end

  def set_profil
    @profile = Profile.find(params[:id])
  end
end
