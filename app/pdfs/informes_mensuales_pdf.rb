=begin
  
NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)
  
=end


class InformesMensualesPdf < Prawn::Document
  def initialize(users, empresas, historias_clinicas)
    super()
    @users = users
    @empresas = empresas
    @historias_clinicas = historias_clinicas
    logo_1
    usuarios_parte_1
    pie_de_pagina
  end

  def logo_1
      image = "#{Rails.root}/app/assets/images/Logo/LogoPdf.png"
  end


  def usuarios_parte_1

    #1 #################################################################################################
    totalhombres = "#{
    HistoriaClinica.where(:a_condicion => "Pasajero")
    .where(:p_genero => "Masculino").count + 
    HistoriaClinica.where(:a_condicion => "Tripulante")
    .where(:p_genero => "Masculino").count +
    HistoriaClinica.where(:a_condicion => "Empleado")
    .where(:p_genero => "Masculino").count + 
    HistoriaClinica.where(:a_condicion => "Visitante")
    .where(:p_genero => "Masculino").count + 
    HistoriaClinica.where(:a_condicion => "Otro")
    .where(:p_genero => "Masculino").count
    }"

    totalmujeres = "#{
    HistoriaClinica.where(:a_condicion => "Pasajero")
    .where(:p_genero => "Femenino").count + 
    HistoriaClinica.where(:a_condicion => "Tripulante")
    .where(:p_genero => "Femenino").count +
    HistoriaClinica.where(:a_condicion => "Empleado")
    .where(:p_genero => "Femenino").count + 
    HistoriaClinica.where(:a_condicion => "Visitante")
    .where(:p_genero => "Femenino").count + 
    HistoriaClinica.where(:a_condicion => "Otro")
    .where(:p_genero => "Femenino").count
    }"



    totalpersonas1 = "#{
    HistoriaClinica.where(:p_genero => "Masculino")
    .where(:a_condicion => "Pasajero").count + 
    HistoriaClinica.where(:p_genero => "Femenino")
    .where(:a_condicion => "Pasajero").count
    }"


    totalpersonas2 = "#{
    HistoriaClinica.where(:p_genero => "Masculino")
    .where(:a_condicion => "Tripulante").count + 
    HistoriaClinica.where(:p_genero => "Femenino")
    .where(:a_condicion => "Tripulante").count
    }"

    totalpersonas3 = "#{
    HistoriaClinica.where(:p_genero => "Masculino")
    .where(:a_condicion => "Empleado").count + 
    HistoriaClinica.where(:p_genero => "Femenino")
    .where(:a_condicion => "Empleado").count
    }"

    totalpersonas4 = "#{
    HistoriaClinica.where(:p_genero => "Masculino")
    .where(:a_condicion => "Visitante").count + 
    HistoriaClinica.where(:p_genero => "Femenino")
    .where(:a_condicion => "Visitante").count
    }"


    totalpersonas5 = "#{
    HistoriaClinica.where(:p_genero => "Masculino")
    .where(:a_condicion => "Otro").count + 
    HistoriaClinica.where(:p_genero => "Femenino")
    .where(:a_condicion => "Otro").count
    }"

    totalpersonas6 = totalhombres.to_i + totalmujeres.to_i


      image = "#{Rails.root}/app/assets/images/Logo/LogoPdf.png"

       

      table([
       [{:image => image, :fit => [95, 190], :colspan => 2, :rowspan => 3}, 
       {:content => "AEROPUERTO:", :colspan => 2,  size: 11, :align => :center}],
       [{:content => "INFORME DE PACIENTES ATENDIDOS POR EMPRESA", :colspan => 2,  size: 9, :align => :center}],
        [{:content => "FECHA:   ABRIL  DE 2014", :colspan => 2,  size: 9, :align => :center}]
      ], :width => bounds.width, :column_widths => [40, 65, 250]) do |t|
         t.cells.border_width = 0
       end
             move_down 30



    table([
     [{:content => "CONDICIÓN",   size: 8}, 
      {:content => "PASAJERO",  size: 8},
      {:content => 'TRIPULANTE',  size: 8},
      {:content => 'EMPLEADO',  size: 8}, 
      {:content => 'VISITANTE',  size: 8},
      {:content => 'OTRO',  size: 8},
      {:content => "TOTAL",  size: 8}]], :width => bounds.width, 
      :column_widths => [78, 77, 77, 77, 77, 77, 77, 77]) do |t|
       t.cells.border_width = 0
       t.cells.font_style = :bold
      end






    # Hombres
    table([
     [{:content => "HOMBRES",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Pasajero")
      .where(:p_genero => "Masculino").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_condicion => "Tripulante")
      .where(:p_genero => "Masculino").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Empleado")
      .where(:p_genero => "Masculino").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Visitante")
      .where(:p_genero => "Masculino").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Otro")
      .where(:p_genero => "Masculino").count}",  size: 8},
      {:content => "#{totalhombres}",  size: 8}]], :width => bounds.width, 
      :column_widths => [78, 77, 77, 77, 77, 77, 77, 77]) do |t|
       t.cells.border_width = 0
      end

    # Mujeres  
    table([
     [{:content => "MUJERES",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Pasajero")
      .where(:p_genero => "Femenino").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_condicion => "Tripulante")
      .where(:p_genero => "Femenino").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Empleado")
      .where(:p_genero => "Femenino").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Visitante")
      .where(:p_genero => "Femenino").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_condicion => "Otro")
      .where(:p_genero => "Femenino").count}",  size: 8},
      {:content => "#{totalmujeres}",  size: 8}]], :width => bounds.width, 
      :column_widths => [78, 77, 77, 77, 77, 77, 77, 77]) do |t|
       t.cells.border_width = 0
      end
    
    # Total  
    table([
     [{:content => "TOTAL",  size: 8},
      {:content => "#{totalpersonas1}",  size: 8}, 
      {:content => "#{totalpersonas2}",  size: 8}, 
      {:content => "#{totalpersonas3}",  size: 8}, 
      {:content => "#{totalpersonas4}",  size: 8}, 
      {:content => "#{totalpersonas5}",  size: 8}, 
      {:content => "#{totalpersonas6}",  size: 8}]], :width => bounds.width, 
      :column_widths => [78, 77, 77, 77, 77, 77, 77, 77]) do |t|
       t.cells.border_width = 0
       t.cells.font_style = :bold

      end


  end

  def pie_de_pagina 
    move_down 360
    text "www.aerosanidadvirtual.com", size: 9, :align => :center, :style => :bold
    text "Aeropuerto Bogotá: (57)(1) 2205674 / 3002221245", size: 9, :align => :center
    text "Aeropuerto Medellín: (57)(4) 3656171 / 3007042683", size: 9, :align => :center
    text "Aeropuerto Rionegro: 3002214168", size: 9, :align => :center
    text "------------------------------------------------", size: 9, :align => :center
    text "comunicaciones@aerosanidadsas.com",  size: 9, :align => :center
  end

end
