class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo])
    end

    def after_sign_in_path_for(resource)
        # Redirect the user to a specific page based on their role
        classifications_path
    end
end
