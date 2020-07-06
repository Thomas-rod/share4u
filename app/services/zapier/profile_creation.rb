module Zapier
  class ProfileCreation < Zapier::Base
    def call_operation
      HTTParty.post("https://hooks.zapier.com/hooks/catch/7940043/oz33d1s/", body: params)
    end

    ## YOU HAVE TO CALL THIS ON USER PROFILE (user.profile)
    def params
      {
        user_id_profil: resource.user.id,
        first_name_profil: resource.first_name,
        last_name_profil: resource.last_name,
        email_profil: resource.user.email
      }
    end
  end
end
