module DeviseGoogleAuthenticator
  module Patches
    autoload :RegistrationsController, 'devise_google_authenticatable/patches/display_qr'
    autoload :SessionsController, 'devise_google_authenticatable/patches/display_qr'

    class << self
      def apply
        Devise::RegistrationsController.send(:include, Patches::RegistrationsController)
        Devise::SessionsController.send(:include, Patches::SessionsController)
      end
    end
  end
end
