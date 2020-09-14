class NetworksController < ApplicationController
  before_action :set_network, only: [:update, :destroy]

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

    if @network.save
      redirect_to profile_path(@network.profile), notice: "Well done ! Your #{@network.social.name} has just been added"
    else
      redirect_to profile_path(@network.profile), notice: "Your #{@network.social.name} can't be empty"
    end
  end

  def update
    @network.username = params[:network][:username]
    if @network.save
      redirect_to profile_path(@network.profile), notice: "Your #{@network.social.name.capitalize} has been updated"
    else
      redirect_to profile_path(@network.profile), notice: "Oupsy, something went wrong"
    end
  end

  def destroy
    @network.destroy
    redirect_to profile_path(@network.profile), notice: "Your #{@network.social.name.capitalize} has been deleted"
  end

  private

  def params_network
    params.require(:network).permit(:username, :social, :profile, :active, :priority, :phone_extension)
  end

  def set_network
    @network = Network.find(params[:id])
  end
end
