module PacienteDecorator

  def select_genero
  	[
      ['Masculino', 'Masculino'],
      ['Femenino', 'Femenino'],
      ['Transexual', 'Transexual']
    ]
  end

	
	def select_documento
		[
      ['Cedula de Ciudadania', 'Cedula de Ciudadania'],
      ['Tarjeta de Identidad', 'Tarjeta de Identidad'],
      ['Cédula de Extranjeria', 'Cedula de Extranjeria'],
      ['Pasaporte', 'Pasaporte'],
      ['Menor Sin Identificación', 'Menor Sin Identificación'],
      ['Adulto Sin Identificación', 'Adulto Sin Identificación'],
      ['Carnet Diplomático', 'Carnet Diplomático'],
      ['Certificado de Nacido Vivo (Menores de 2 Meses)', 'Certificado de Nacido Vivo (Menores de 2 Meses)'],
      ['Registro Civil', 'Registro Civil']
  	]
	end



	def select_sangre
		[
      ['A-', 'A-'],
      ['A+', 'A+'],
      ['B-', 'B-'],
      ['B+', 'B+'],
      ['AB-', 'AB-'],
      ['AB+', 'AB+'],            
      ['O-', 'O-'],
      ['O+', 'O+'],
      ['No Especificado', 'No Especificado']
 	]
	end


	def select_condicion
		[
	    ['Pasajero', 'Pasajero'],
	    ['Tripulante', 'Tripulante'],
	    ['Empleado', 'Empleado'],
	    ['Visitante', 'Visitante'],
	    ['Otro', 'Otro']
  	]
	end


end