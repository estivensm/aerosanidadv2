class Pages < ActiveRecord::Base

   def self.search(search)
    where("primer_nombre like '%#{search}%'  or segundo_nombre like '%#{search}%'
    or primer_apellido like '%#{search}%'  or segundo_apellido like '%#{search}%'
    or email like '%#{search}%' or documento like '%#{search}%'
    or nombre_completo like '%#{search}%' ").page(params[:page]).per_page(8)

  end

end
