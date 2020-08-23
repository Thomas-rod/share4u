class VcardsController < ApplicationController
before_action :set_vcard, only: [:update, :destroy]
  def create
    vcard = Vcard.new(params_vcard)
    vcard.profile = current_user.profile
    network_contact = Network.new(profile: vcard.profile, social: Social.find_by(name: "contact"), username: vcard.profile.first_name)
    if vcard.save! && network_contact.save!
      redirect_to profile_path(vcard.profile), notice: "Super, ta carte de contact a bien été ajouté !"
    else
      redirect_to profile_path(vcard.profile), notice: "Aïe quelque chose s'est mal passée."
    end
  end

  def update
    @vcard.update!(params_vcard)
    redirect_to profile_path(@vcard.profile), notice: "Super, ta carte de contact a bien été modifiée !"
  end

  def destroy
    @network_contact = @vcard.profile.networks.select{|n| n.social.name == "contact"}
    @network_contact.first.destroy
    @vcard.destroy
    redirect_to profile_path(@vcard.profile), notice: "Ta carte de contact a bien été supprimée"
  end

  private

  def params_vcard
    params.require(:vcard).permit(:profile, :phone_number, :address, :email)
  end

  def set_vcard
    @vcard = Vcard.find(params[:id])
  end
end
