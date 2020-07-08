class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  include Pundit

  # Pundit: white-list approach.
    # after_action :verify_authorized, except: :index, unless: :skip_pundit?
    # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

    # Uncomment when you *really understand* Pundit!
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    def user_not_authorized
      flash[:alert] = "Tu n'es pas autorisé à accéder à cette page. SHAME"
      redirect_to(root_path)
    end


  #-----------------------------------#
            protected
  #------------------------------------#

  def after_sign_in_path_for(resource_or_scope)
    if current_user.profile.nil?
      new_profile_path
    else
      profile_path(current_user.profile)
    end
  end

  def after_sign_up_path_for(resource_or_scope)
    if current_user.profile.nil?
      new_profile_path
    else
      profile_path(current_user.profile)
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  private

    def skip_pundit?
      devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
    end
end
