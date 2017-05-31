class SessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
  end

  def create
    if @user = login(params[:nombre_usuario], params[:password], params[:remember_me])
      if  @user.aprobado_login != "Si"
        logout
        redirect_to root_url
      else
        flash[:success] = "Bienvenido, #{current_user.nombres} #{current_user.apellidos}!"
        redirect_back_or_to root_path
      end 
    else
      flash.now[:danger] = "¡Error de inicio de sesion! Por favor, consultar su correo electrónico y contraseña."
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = "Cerraste Sesión"
    redirect_to root_url
  end
end