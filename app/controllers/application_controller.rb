class ApplicationController < ActionController::Base
    before_action :configure_sign_up_params, if: :devise_controller?


    def after_sign_in_path_for(resource)
        categories_path
    end

    def after_sign_out_path_for(resource)
        root_path
    end

    protected
    def configure_sign_up_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :age, :gender])
    end
end
