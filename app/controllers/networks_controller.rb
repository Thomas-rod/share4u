class NetworksController < ApplicationController
  # before_action :set_network, only: [:show]

  def index
  end

  def new
    @socials = Social.all
    @network = Network.new()
  end

  def create
  end

  def update
  end

  private

  def network_params
    params.require(:network).permit(:username, :social, :profile)
  end

  def set_network
    @network = Network.find(params[:id])
  end
end
