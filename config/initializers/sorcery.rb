
Rails.application.config.sorcery.submodules = []

Rails.application.config.sorcery.configure do |config|
 
  config.user_config do |user|
   
    user.username_attribute_names = [:nombre_usuario]

  end

  config.user_class = "User"
end
