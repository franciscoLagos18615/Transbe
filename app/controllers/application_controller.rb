class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to new_user_session_path, notify: 'No tiene permisos para realizar esta accion'
  # end
  rescue_from CanCan::AccessDenied do |exception|
    render :file => "#{Rails.root}/public/402.html", :status => 402, :layout => false
    ## to avoid deprecation warnings with Rails 3.2.x (and incidentally using Ruby 1.9.3 hash syntax)
    ## this render call should be:
    # render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
  end



end
