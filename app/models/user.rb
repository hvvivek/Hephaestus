class User < ApplicationRecord

    def self.from_omniauth(auth)
        user = User.find_by email: auth.info.email
        if user.nil?
            where(provider: auth.provider, email: auth.info.email).first_or_initialize.tap do |user|
                user.provider = auth.provider
                user.uid = auth.uid
                user.name = auth.info.name
                user.first_name = auth.info.first_name
                user.last_name = auth.info.last_name
                user.email = auth.info.email
                user.image = auth.info.image
                
                # logger.info user.name
                user.save!
            end
        end
        user
    end
    

end
