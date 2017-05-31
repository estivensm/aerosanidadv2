# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  aprobado_login                  :string
#  email                           :string           not null
#  nombre_usuario                  :string
#  nombres                         :string
#  apellidos                       :string
#  tipo_documento                  :string
#  documento                       :string
#  registro_medico                 :string
#  rol_id                          :integer
#  crypted_password                :string
#  salt                            :string
#  created_at                      :datetime
#  updated_at                      :datetime
#  name                            :string
#  remember_me_token               :string
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#  activation_state                :string
#  activation_token                :string
#  activation_token_expires_at     :datetime
#  picture                         :string
#  failed_logins_count             :integer          default(0)
#  lock_expires_at                 :datetime
#  unlock_token                    :string
#  last_login_at                   :datetime
#  last_logout_at                  :datetime
#  last_activity_at                :datetime
#  last_login_from_ip_address      :string
#  avatar_file_name                :string
#  avatar_content_type             :string
#  avatar_file_size                :integer
#  avatar_updated_at               :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new( name: "Raul", email: "lala5@user.com", password: 'secret', password_confirmation: 'secret' )
  end

  test "user should be valid" do
    assert @user.valid?
  end
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 2
    assert_not @user.valid?
  end

end
