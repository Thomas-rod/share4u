class MagnetProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :vcard]

  def show
    @blue_page = true
    @magnet_profile = MagnetProfile.find(params[:id])
    if @magnet_profile.profile.nil? && current_user

    elsif @magnet_profile.profile.nil?
      redirect_to new_user_session_path(magnet_profile_id: @magnet_profile.id)
    else
      @networks = @magnet_profile.profile.networks
    end
  end

  def create
    @magnet_profile = MagnetProfile.new(params_magnet_profiles)
    if @magnet_profile.save
      redirect_to magnet_profile_path(@magnet_profile)
    end
  end

  def update
    @navbar_none = true
    @magnet_profile = MagnetProfile.find(params[:id])
    if check_profile_attachment?(@magnet_profile)
      @magnet_profile.update(profile: current_user.profile)
      redirect_to profile_path(@magnet_profile.profile), notice: "Congratz ! Your magnet has been activated. You can now share your socials with impact !"
    else
      redirect_to profile_path(current_user.profile), notice: "You already got a magnet. For now you can't have more than one .."
    end
  end

  #controller method
  def vcard
    magnet_profile = MagnetProfile.find(params[:id])
    fullname = "#{magnet_profile.profile.first_name}_#{magnet_profile.profile.last_name}"

    card = Vpim::Vcard::Maker.make2 do |maker|

      #setting up name
      maker.add_name do |name|
        name.given = magnet_profile.profile.first_name
        name.family = magnet_profile.profile.last_name
      end

      #setting up addr
      # maker.add_addr do |addr|
      # addr.location = ‘home’
      # addr.street = contact.street
      # addr.locality = contact.area
      # addr.region = contact.state
      # addr.postalcode = contact.pin
      # addr.country = contact.country
      # end
      unless magnet_profile&.profile&.vcard&.address == "" || magnet_profile&.profile&.vcard&.address.nil?
        maker.add_addr do |addr|
        # addr.location = ‘work’
          addr.street = magnet_profile.profile.vcard.address
        # addr.locality = company.area
        # addr.region = company.state
        # addr.postalcode = company.pin
        # addr.country = company.country
        end
      end

      # setting up phone
      unless magnet_profile&.profile&.vcard&.phone_number == "" || magnet_profile&.profile&.vcard&.phone_number.nil?
        maker.add_tel(magnet_profile.profile.vcard.phone_number) do |tel|
          tel.location = 'work'
          tel.preferred = true
        end
      end

      # if !contact.ph_office.empty?
      # phone = contact.ph_office
      # maker.add_tel(phone) do |tel|
      # tel.location = ‘work’
      # tel.preferred = true
      # end
      # end

      # if !contact.fax.empty?
      # maker.add_tel(contact.fax) do |tel|
      # tel.location = ‘work’
      # tel.capability = ‘fax’
      # end
      # end

      # if !contact.mobile.empty?
      # maker.add_tel(contact.mobile) do |tel|
      # tel.location = ‘home’
      # tel.capability = ‘mobile’
      # end
      # end

      #setting up email
      unless magnet_profile&.profile&.vcard&.email == "" || magnet_profile&.profile&.vcard&.email.nil?
        maker.add_email(magnet_profile.vcard.email) do |e|
          e.location = 'work'
        end
      end
    end
    send_data card.to_s, :type => "text/x-vcard", :filename => URI::encode(fullname) + ".vcf"
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
