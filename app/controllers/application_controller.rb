class ApplicationController < ActionController::Base
  include UsersHelper
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
 # force_ssl

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  helper_method :admin?



  protected
  # Permisos Admin
  def admin?
    if current_user && current_user.rol_id === 1 
     flash[:notice] = "Bienvenido #{current_user.email}"
    end
  end


  
  def admin_dash?
    if current_user.rol.nombre == "Dashboard"
     flash[:notice] = "Bienvenido #{current_user.email}"
    end
  end



  def authorize
    unless admin? || admin_dash?
      flash[:error] = "Acceso no Permitido"
      redirect_to root_path
      false
    end
  end


  # Permisos Medico
  def admin2?
    if current_user && current_user.rol_id === 2
     flash[:notice] = "Bienvenido #{current_user.email}"
    end
  end
  # Permisos
  def authorize2
    unless admin2?
      flash[:error] = "Acceso no Permitido"
      redirect_to root_path
      false
    end
  end



  # Permisos Auxiliar
  def admin3?
    if  current_user && current_user.rol_id === 3
     flash[:notice] = "Bienvenido #{current_user.email}"
    end
  end
  # Permisos
  def authorize2
    unless admin3?
      flash[:error] = "Acceso no Permitido"
      redirect_to root_path
      false
    end
  end



  private




  def notfound
    flash[:danger] = "No Tienes Permiso para esto"
    redirect_to root_path
  end


  def not_authenticated
    flash[:danger] = "No Tienes Permiso para esto"
    redirect_to root_path
  end

  def not_found
    flash[:danger] = "#{params[:controller].chop.capitalize } no se encotro."
    redirect_back_or_to controller: params[:controller]
  end

  def current_users
    User.current_users
  end

  helper_method :current_users



end