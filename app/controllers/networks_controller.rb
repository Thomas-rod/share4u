class NetworksController < ApplicationController
  before_action :set_network, only: [:update]

  def index
  end

  def new
    @socials = Social.all
    @network = Network.new()
  end

  def create
    @network = Network.new(params_network)
    @network.profile = Profile.find(params[:profile])
    @network.social = Social.find(params[:social])

    if @network.save!
      redirect_to profile_path(@network.profile), notice: "Bravo ! ton compte #{@network.social.name} vient d'être ajouté."
    else
      redirecto_to profile_path(@network.profile), notice: "Aïe quelque chose s'est mal passé."
    end
  end

  def update
    @network.username = params[:network][:username]
    if @network.save!
      redirect_to profile_path(@network.profile), notice: "Ton profil a bien été mis à jours"
    else
      redirect_to profile_path(@network.profile), notice: "Aïe quelque chose s'est mal passé."
    end

  end

  private

  def params_network
    params.require(:network).permit(:username, :social, :profile)
  end

  def set_network
    @network = Network.find(params[:id])
  end
end
