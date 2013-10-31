class Users::RegistrationsController < Devise::RegistrationsController

	# GET /resource/sign_up
    def new
        session[:user] ||= { }
        @user = build_resource(session[:user])
        @wizard = ClientRegistrationWizard.new(current_step)
        respond_with @user
    end

     # GET /fans/sign_up
    def new_fan
        session[:user] ||= { }
        session[:user]['role'] = :fan
        @user = build_resource(session[:user])
        render 'new_fan'
    end

     # GET /fans/sign_up
    def new_coach
        session[:user] ||= { }
        session[:user]['role'] = :coach
        @user = build_resource(session[:user])
        render 'new_coach'
    end

end
