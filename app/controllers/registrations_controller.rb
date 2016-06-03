class RegistrationsController< Devise::RegistrationsController
    respond_to :html, :js

  before_filter :configure_permitted_parameters


  def new
    super
  end


  def create
    
    @user = User.new sign_up_params
    if @user.save
      flash[:notice] = "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."
      redirect_to root_url
    else
      flash[:notice] = "invalid email address"
      render :action => :new
    end
  end


  protected
  def after_update_path_for resource
    edit_user_registration_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit({ roles: [] },:name, :address, :contact, :email, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :address, :contact, :email, :password, :password_confirmation,:current_password)
    end
  end

  def after_sign_up_path_for(resource)
    root_path
  end

end