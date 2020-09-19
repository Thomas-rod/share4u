class VcardsController < ApplicationController
before_action :set_vcard, only: [:update, :destroy]
  def create
    @vcard = Vcard.new(params_vcard)
    @vcard.profile = current_user.profile
    @vcard.profile.networks.empty? ? order = 1 : order = (@vcard.profile.networks.order(order: :ASC).last.order).to_i + 1
    network_contact = Network.new(profile: @vcard.profile, social: Social.find_by(name: "contact"), username: @vcard.profile.first_name, order: order)
    if @vcard.save && network_contact.save
      redirect_to profile_path(@vcard.profile), notice: "Youpi ! You contact plug has been added"
    else
      redirect_to profile_path(@vcard.profile), notice: "Oupsy, something went wrong"
    end
  end

  def update
    @vcard.update!(params_vcard)
    redirect_to profile_path(@vcard.profile), notice: "Well done, your contact plug has been updated "
  end

  def destroy
    @network_contact = @vcard.profile.networks.select{|n| n.social.name == "contact"}
    @network_contact.first.destroy
    @vcard.destroy
    redirect_to profile_path(@vcard.profile), notice: "Your contact plug has been deleted "
  end

  private

  def params_vcard
    params.require(:vcard).permit(:profile, :phone_number, :address, :email)
  end

  def set_vcard
    @vcard = Vcard.find(params[:id])
  end
end
