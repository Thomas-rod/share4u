class NetworksController < ApplicationController
  before_action :set_network, only: [:update, :destroy]
  require 'json'

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
    @network.profile.networks.empty? ? @network.order = 1 : @network.order = @network.profile.networks.order(order: :ASC).last.order.to_i + 1
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

  def direct_update
    if Network.find_by(id:params[:network_id]) == nil
      redirect_to root_path, notice: "Select one of your social"
    else
      @network = Network.find_by(id:params[:network_id])
      @network.update(direct:true)
      counter = 2
      @network.profile.networks.order(order: :ASC).each do |n|
        if @network == n
          n.update(order: 1)
        else
          n.update(direct:false, order: counter)
          counter +=1
        end
      end
    end
  end

  def direct_delete
    @network = Network.find_by(id:params[:network_id])
    @network.update(direct:false)
  end


  private

  def params_network
    params.require(:network).permit(:username, :social, :profile, :active, :priority)
  end

  def set_network
    @network = Network.find(params[:id])
  end
end
