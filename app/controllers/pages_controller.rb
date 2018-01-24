class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:home, :contact, :help]


  def home

    if current_user && current_user.rol.nombre == "Dashboard"
        redirect_to graficas_path
    
      else
    if params[:search].present?
        @pacientes = Paciente.search(params[:search]).page(params[:page]).per_page(8)
    end


    if request.xhr?
      render partial: 'personas', status: 200
    end
end


  end

  def contact
  end

  def help
  end

  def reportes
  end

end