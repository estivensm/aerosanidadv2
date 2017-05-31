class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :current_user?, only: [:edit, :update, :destroy]
  skip_before_filter :require_login, only: [:new, :create, :show]
  before_action :authorize, only: [:index, :destroy, :new, :create]

  def index

    @users = User.search(params[:search]).page(params[:page]).per_page(20)
    @usuarios = User.all

    respond_to do |format|
      format.html
      format.pdf do
        pdf = UsersPdf.new(
          @usuarios)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', :disposition =>
  "inline"
      end
    end
  end

  def show
    
    if current_user.rol_id == 1

    @users = User.paginate(page: params[:page], per_page: 10)

    respond_to do |format|
      format.html
      format.pdf do
        pdf = UsersPdf.new(
          @users)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', :disposition => "inline"
      end
    end
    else
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def edit
    if current_user.rol_id != 1
      if current_user.id != @user.id
        redirect_to root_path
      end
    end
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { flash[:success] = "Registro exitoso."
                      redirect_to root_path  }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { flash[:danger] = "Registro fallido."
                      render :new   }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { flash[:success] = "Perfil actualizado correctamente"
                      redirect_to @user }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { flash[:danger] = "Editar perfil falló. Por favor, compruebe los datos que introduces"
                      render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { flash[:success] = "Usuario eliminado."
                    redirect_to users_url }
      format.json { head :no_content }
    end
  end

=begin
  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      flash[:success] = 'User was successfully activated.'
      redirect_to @user
    else
      flash[:warning] = 'Cannot activate this user.'
      redirect_to root_path
    end
  end
=end


  private
    def set_user
      @user = User.find(params[:id])

    end

    def user_params
      params.require(:user).permit(:aprobado_login, :nombre_usuario, :nombres, :apellidos , :tipo_documento, :documento, :rol_id,
      :registro_medico, :email, :password, :password_confirmation, :avatar)
    end
end