=begin
  
NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)
  
=end

class HistoriasClinicasPdf < Prawn::Document
  def initialize(historias_clinicas, diagnosticos, cie10s, procedimientos, notas_progreso)
    super()
    @historias_clinicas = historias_clinicas
    @diagnosticos = diagnosticos
    @cie10s = cie10s
    @procedimientos = procedimientos
    @notas_progreso = notas_progreso
    logo_1
    datos_generales
    datos_generales2
    datos_generales3
    datos_generales4
    datos_generales5
    experiencias_laborales_1
    experiencias_laborales_2
    experiencias_laborales_3
    experiencias_laborales_4
    experiencias_laborales_5
    experiencias_laborales_7
    experiencias_laborales_6
    experiencias_laborales_9
    experiencias_laborales_10
    experiencias_laborales_11
    experiencias_laborales_11_5
    experiencias_laborales_12
    experiencias_laborales_12_5
    experiencias_laborales_13
    experiencias_laborales_14
    experiencias_laborales_15
    experiencias_laborales_16
    experiencias_laborales_17
    experiencias_laborales_18
    experiencias_laborales_19
    experiencias_laborales_20
    experiencias_laborales_21
    experiencias_laborales_22
    experiencias_laborales_23
    experiencias_laborales_24
    experiencias_laborales_25
    experiencias_laborales_26
    experiencias_laborales_27
    experiencias_laborales_28
    experiencias_laborales_29
    experiencias_laborales_30
    experiencias_laborales_31
    experiencias_laborales_32
    experiencias_laborales_33
    experiencias_laborales_34
    experiencias_laborales_35
    experiencias_laborales_36
    experiencias_laborales_37
    experiencias_laborales_38
    experiencias_laborales_39
    experiencias_laborales_40
    experiencias_laborales_41
    experiencias_laborales_42
    experiencias_laborales_43
    experiencias_laborales_44
    experiencias_laborales_45
    experiencias_laborales_46
    experiencias_laborales_47
    experiencias_laborales_48
    experiencias_laborales_49
    experiencias_laborales_50
    experiencias_laborales_51
    experiencias_laborales_52
    experiencias_laborales_53
    experiencias_laborales_54
    experiencias_laborales_55
    experiencias_laborales_56
    experiencias_laborales_57
    experiencias_laborales_58
    experiencias_laborales_59
    experiencias_laborales_60
    experiencias_laborales_61
    experiencias_laborales_62
    experiencias_laborales_63
    experiencias_laborales_64
    experiencias_laborales_65
    experiencias_laborales_66
    experiencias_laborales_67
    experiencias_laborales_68
    experiencias_laborales_69
    experiencias_laborales_70
    
    pie_de_pagina
  end

  def logo_1

  end






  def datos_generales
      move_down 10

      image = "#{Rails.root}/app/assets/images/Logo/LogoPdf.png"
          @historias_clinicas.map do |historia_clinica|

table([
 [{:image => image, :fit => [95, 190], :colspan => 2, :rowspan => 3}, {:content => "HISTORIA CLINICA", :colspan => 2,  size: 11, :align => :center}, {:content => 'HC N" ' + historia_clinica.id.to_s,  size: 9, :align => :center}],
  [{:content => 'FECHA: ' + historia_clinica.created_at.strftime("%d-%m-%y"),  size: 9},{:content => 'HORA MILITAR: ' + historia_clinica.created_at.strftime("%H:%M"),  size: 9, :align => :right} , {:content => 'Revisión 11 - 13',  size: 9, :align => :center}],
 [{:content => "DATOS GENERALES", :colspan => 2,  size: 9, :align => :center}, {:content => "F GS 033",  size: 9, :align => :center}]
], :width => bounds.width, :column_widths => [65, 40, 100, 150]) do |t|
   t.cells.border_width = 0

  
      t.before_rendering_page do |page|
      page.row(0).border_top_width          = 1
      page.row(-1).border_bottom_width      = 1
      page.column(0).border_left_width      = 1
      page.column(-1).border_right_width    = 1
      end

end
 end


  @historias_clinicas.map do |historia_clinica|
      table([
        [{:content =>  'Movil/Servicio:            ' +  historia_clinica.a_movil_servicio.to_s,  size: 9} , 
         {:content => 'Conductor/Comandante:       ' + historia_clinica.a_cove.to_s,  size: 9},
         {:content =>  'Ciudad:                    ' +  historia_clinica.p_ciudad.to_s.capitalize,  size: 9}
        ]
      ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
     t.cells.border_width = 0

      t.before_rendering_page do |page|
      page.row(0).border_top_width          = 1
      page.row(-1).border_bottom_width      = 0
      page.column(0).border_left_width      = 1
      page.column(-1).border_right_width    = 1
      end

      end
    end



  end



  def datos_generales2
       @historias_clinicas.map do |historia_clinica|

    table([
      [{:content => 'Aeropuerto:                ' + historia_clinica.aeropuerto.nombre.to_s.capitalize + ' - ' + historia_clinica.aeropuerto.ciudad.nombre.to_s.capitalize,  size: 9},
       {:content =>  'Medico De Turno:               ' +  historia_clinica.user.nombre_usuario.to_s,  size: 8},
       {:content => 'Registro Medico:                     ' + historia_clinica.user.registro_medico.to_s,  size: 8}
      ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0

      t.before_rendering_page do |page|
      page.row(0).border_top_width          = 0
      page.row(-1).border_bottom_width      = 0
      page.column(0).border_left_width      = 1
      page.column(-1).border_right_width    = 1
      end


    end

  end 





  end



  def datos_generales3

    @historias_clinicas.map do |historia_clinica|

    table([
      [{:content =>  'Empresa:            ' +  historia_clinica.a_empresa.to_s.capitalize,  size: 8 } , 
       {:content => 'Auxiliar De Enfermería:      ' + historia_clinica.a_auxiliar.to_s,  size: 8},
       {:content =>  'Tipo De Servicio:   ' +  historia_clinica.a_tipo_servicio.to_s.capitalize,  size: 8}
      ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0

      t.before_rendering_page do |page|
      page.row(0).border_top_width          = 0
      page.row(-1).border_bottom_width      = 0
      page.column(0).border_left_width      = 1
      page.column(-1).border_right_width    = 1
      end

    end
  end 

      
  end



  def datos_generales4

  end

  def datos_generales5
      

 @historias_clinicas.map do |historia_clinica|

    table([
      [{:content => 'Lugar De Atención:    ' + historia_clinica.a_lugar_de_atencion.to_s,  size: 7}]
    ], :width => bounds.width, :column_widths => [540]) do |t|
   t.cells.border_width = 0
  
      t.before_rendering_page do |page|
      page.row(0).border_top_width          = 0
      page.row(-1).border_bottom_width      = 1
      page.column(0).border_left_width      = 1
      page.column(-1).border_right_width    = 1
      end

    end

end
  end




  def experiencias_laborales_1
      move_down 30
      text "I. IDENTIFICACIÓN DEL PACIENTE", size: 15, style: :bold, :color => "22BDC8"
      


 @historias_clinicas.map do |historia_clinica|

    table([
      [{:content =>  'Nombres:                      ' +  historia_clinica.p_primer_nombre.to_s + ' ' + historia_clinica.p_segundo_nombre,  size: 7} , 
       {:content => 'Apellidos:              ' + historia_clinica.p_primer_apellido.to_s + ' ' + historia_clinica.p_segundo_apellido,  size: 7},
       {:content =>  'Email:                         ' +  historia_clinica.p_email.to_s,  size: 7}
     ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0


      t.before_rendering_page do |page|
      page.row(0).border_top_width          = 1
      page.row(-1).border_bottom_width      = 0
      page.column(0).border_left_width      = 1
      page.column(-1).border_right_width    = 1
      end
    end

end


  end



  def experiencias_laborales_2
      move_down 0.5



 @historias_clinicas.map do |historia_clinica|

    table([
      [{:content => 'Tipo De Documento:    ' + historia_clinica.p_tipo_documento.to_s,  size: 7},
        {:content =>  'Documento:          ' +  historia_clinica.p_documento.to_s,  size: 7},
        {:content => 'Fecha Nacimiento:     ' + historia_clinica.p_fecha_nacimiento.to_s,  size: 7} ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end

  end


  def experiencias_laborales_3


  end



  def experiencias_laborales_4
      move_down 0.5



 @historias_clinicas.map do |historia_clinica|

    table([
      [{:content =>  'Genero:                        ' +  historia_clinica.p_genero.to_s,  size: 8 } , 
       {:content => 'Profesión:             ' + historia_clinica.p_profesion.to_s,  size: 8},
       {:content =>  'Tipo De Sangre:         ' +  historia_clinica.p_tipo_sangre.to_s,  size: 8 }
      ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end

  end



  def experiencias_laborales_5
      move_down 0.5



 @historias_clinicas.map do |historia_clinica|

    table([
      [{:content => 'Nacionalidad:                ' + historia_clinica.p_nacionalidad,  size: 8},
       {:content => 'Dirección:             ' + historia_clinica.p_direccion,  size: 8},
       {:content => 'Nombre De Medico:  ' + historia_clinica.user.nombres + ' ' + historia_clinica.user.apellidos,  size: 8}
     ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end

     
  end



  def experiencias_laborales_7
      move_down 0.5


  end



  def experiencias_laborales_6
      move_down 0.5




 @historias_clinicas.map do |historia_clinica|

    table([
      [{:content => 'Condición:                     ' + historia_clinica.a_condicion.capitalize,  size: 8}, 
        {:content => 'Origen:                 ' + historia_clinica.a_origen.capitalize,  size: 8},
        {:content => 'Destino:                    ' + historia_clinica.a_destino.capitalize,  size: 8}
      ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end

  end


        

  def experiencias_laborales_9
      move_down 0.5



 @historias_clinicas.map do |historia_clinica|

    table([
      [ {:content => 'Nombre Acompañante:     ' + historia_clinica.a_nombre_acompañante,  size: 8},
        {:content => 'Parentesco Acompañante:   ' + historia_clinica.a_parentesco,  size: 8},
        {:content => 'Telefono Acompañante:      ' + historia_clinica.a_telefono,  size: 8}
      ]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end

  end



  def experiencias_laborales_10
     
  end



     

  def experiencias_laborales_11
      move_down 0.5

 @historias_clinicas.map do |historia_clinica|


    table([
      [{:content => 'Arl:                  ' + historia_clinica.arl,  size: 8}, 
        {:content => 'Eps:                  ' + historia_clinica.eps,  size: 8},
      {:content => 'Edad:                                  ' + historia_clinica.p_edad.to_s + ' ' + historia_clinica.p_tipo_edad,  size: 8}]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end

  end





  def experiencias_laborales_11_5

      move_down 0.5



  end



       
  def experiencias_laborales_12
      move_down 30
      text "II. MOTIVO DE CONSULTA", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows12, :column_widths => [540], :cell_style => {position: :absulte,  size: 9}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows12
          @historias_clinicas.map do |historia_clinica|
        [
          historia_clinica.a_motivo_de_consulta
        ]
      end
  end        

  def experiencias_laborales_12_5
      move_down 30
      text "III. ENFERMEDAD ACTUAL", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows12_5, :column_widths => [540], :cell_style => {position: :absulte,  size: 9}) do |t|
        t.cells.border_width = 0      
    end
  end

  def experiencias_laborales_rows12_5
          @historias_clinicas.map do |historia_clinica|
        [
          historia_clinica.a_enfermedad_actual
        ]
      end
  end  


  def experiencias_laborales_13
      move_down 30
      text "IV. ANTECEDENTES PERSONALES", size: 15, style: :bold, :color => "22BDC8"
   
      table(experiencias_laborales_rows13_5, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 9}) do |t|
          t.row(0).font_style = :bold
          t.cells.border_width = 0
    end
      table(experiencias_laborales_rows13, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end

    
  end


  def experiencias_laborales_rows13_5
      [['Antecedentes', 'Si/No', 'Ampliar Información']] +

          @historias_clinicas.map do |historia_clinica|
        [

        ]
      end
  end

  def experiencias_laborales_rows13

          @historias_clinicas.map do |historia_clinica|
        [
          'Neonatales', historia_clinica.b_neonatales, 
          historia_clinica.b_neonatales_descripcion
        ]
      end
  end

  def experiencias_laborales_14
      move_down 0.5
      table(experiencias_laborales_rows14, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows14
          @historias_clinicas.map do |historia_clinica|
        [
          'Patologicos', historia_clinica.b_patologicos, 
          historia_clinica.b_patologicos_descripcion
        ]
      end
  end

    
  def experiencias_laborales_15
      move_down 0.5
      table(experiencias_laborales_rows15, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows15
          @historias_clinicas.map do |historia_clinica|
        [
          'Quirurgicos',historia_clinica.b_quirurgicos, 
          historia_clinica.b_quirurgicos_descripcion
        ]
    end
  end    

    
  def experiencias_laborales_16
      move_down 0.5
      table(experiencias_laborales_rows16, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0      
    end
  end

  def experiencias_laborales_rows16
          @historias_clinicas.map do |historia_clinica|
        [
          'Farmacologicos', historia_clinica.b_farmacologicos, 
          historia_clinica.b_farmacologicos_descripcion
        ]
    end
  end    

    
  def experiencias_laborales_17
      move_down 0.5
      table(experiencias_laborales_rows17, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0      
    end
  end

  def experiencias_laborales_rows17
          @historias_clinicas.map do |historia_clinica|
        [
          'Alergicos',historia_clinica.b_alergicos, 
          historia_clinica.b_alergicos_descripcion
        ]
    end
  end    


  def experiencias_laborales_18
      move_down 0.5
      table(experiencias_laborales_rows18, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0      
    end
  end

  def experiencias_laborales_rows18
          @historias_clinicas.map do |historia_clinica|
        [
          'Toxicos', historia_clinica.b_toxicos, 
          historia_clinica.b_toxicos_descripcion
        ]
    end
  end    

    
  def experiencias_laborales_19
      move_down 0.5
      table(experiencias_laborales_rows19, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0 
    end
  end

  def experiencias_laborales_rows19
          @historias_clinicas.map do |historia_clinica|
        [
          'Traumaticos', historia_clinica.b_traumaticos, 
          historia_clinica.b_traumaticos_descripcion
        ]
    end
  end    


  def experiencias_laborales_20
      move_down 0.5
      table(experiencias_laborales_rows20, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0 
    end
  end

  def experiencias_laborales_rows20
          @historias_clinicas.map do |historia_clinica|
        [
          'Hospitalarios', historia_clinica.b_hospitalarios, 
          historia_clinica.b_hospitalarios_descripcion
        ]
    end
  end    

   
  def experiencias_laborales_21
      move_down 0.5
      table(experiencias_laborales_rows21, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows21
          @historias_clinicas.map do |historia_clinica|
        [
          'Atep Laboral', historia_clinica.b_atep_laboral, 
          historia_clinica.b_atep_laboral_descripcion
        ]
    end
  end    


  def experiencias_laborales_22
      move_down 0.5
      table(experiencias_laborales_rows22, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows22
          @historias_clinicas.map do |historia_clinica|
        [
          'Familiares', historia_clinica.b_familiares, 
          historia_clinica.b_familiar_descripcion
        ]
    end
  end    

    
  def experiencias_laborales_23
      move_down 0.5
      table(experiencias_laborales_rows23, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows23
          @historias_clinicas.map do |historia_clinica|
        [
          'Inmunologicos', historia_clinica.b_inmunologicos, 
          historia_clinica.b_inmunologios_descripcion
        ]
    end
  end    
    
  def experiencias_laborales_24
      move_down 0.5
      table(experiencias_laborales_rows24, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows24
          @historias_clinicas.map do |historia_clinica|
        [
          'Familiares', historia_clinica.b_familiares, 
          historia_clinica.b_familiar_descripcion
        ]
    end
  end    

    
  def experiencias_laborales_25
      move_down 0.5
      table(experiencias_laborales_rows25, :column_widths => [120, 35, 385], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows25
          @historias_clinicas.map do |historia_clinica|
        [
          'Asociado Viajes De Vuelo', historia_clinica.b_asociado_viajes_de_vuelo, 
          historia_clinica.b_asociado_viajes_de_vuelo_descripcion
        ]
    end
  end    



  def experiencias_laborales_26
      move_down 30
      text "GINECO-OBSTÉTRICOS", size: 15, style: :bold, :color => "22BDC8"

 @historias_clinicas.map do |historia_clinica|


    table([
      [{:content => 'Ciclo Menstrual:                        ' + historia_clinica.b_ciclo_menstrual.to_s,  size: 8}, 
        {:content => 'FUM:                                             ' + historia_clinica.b_fum.to_s,  size: 8},
      {:content => 'Menarquia:                        ' + historia_clinica.b_menarquia.to_s,  size: 8}]
    ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
   t.cells.border_width = 0
    end
   end


  end

  def experiencias_laborales_rows26

  end

  def experiencias_laborales_27
      move_down 0.5


     @historias_clinicas.map do |historia_clinica|


        table([
          [{:content => 'Fecha de la Ultima Citología:    ' + historia_clinica.b_fecha_ultima_citologia.to_s,  size: 8}, 
            {:content => 'Fecha de la Ultima Mamografia:   ' + historia_clinica.b_fecha_ultima_mamografia.to_s,  size: 8},
          {:content => 'Esta en Embarazo:            ' + historia_clinica.b_embarazo.to_s,  size: 8}]
        ], :width => bounds.width, :column_widths => [180, 180, 180]) do |t|
       t.cells.border_width = 0
        end
       end

  end

  def experiencias_laborales_rows27

    
  end

  def experiencias_laborales_28
      move_down 0.5
      
  end

  def experiencias_laborales_rows28

  end


  def experiencias_laborales_29
      move_down 0.5
      table(experiencias_laborales_rows29, :column_widths => [29,42,29,38,29,38,29,38,29,38,29,38,29,38,29,38], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows29
          @historias_clinicas.map do |historia_clinica|

        [
          'Eco:', historia_clinica.b_eco, 
          'P:', historia_clinica.b_p,
          'C:', historia_clinica.b_c,
          'A:', historia_clinica.b_p,
          'M:', historia_clinica.b_a,
          'V:', historia_clinica.b_v,
          'E:', historia_clinica.b_e,
          'G:', historia_clinica.b_g
        ]
    end
  end
    


  def experiencias_laborales_30
      move_down 30
      text "V. REVISIÓN POR SISTEMAS", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows30_5, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 9}) do |t|
        t.cells.border_width = 0
        t.row(0).font_style = :bold
    end

   

  end


  def experiencias_laborales_rows30_5
      [['Antecedentes', 'Anormal/Normal', 'Ampliar Información']] +

          @historias_clinicas.map do |historia_clinica|
        [

        ]
      end
  end


  def experiencias_laborales_31
      move_down 0.5
      table(experiencias_laborales_rows31, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows31
          @historias_clinicas.map do |historia_clinica|

        [
          'Cardiovascular:', historia_clinica.c_cardiovascular, 
          historia_clinica.c_cardiovascular_descripcion
        ]
    end
  end
    


  def experiencias_laborales_32
      move_down 0.5
      table(experiencias_laborales_rows32, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows32
          @historias_clinicas.map do |historia_clinica|

        [
          'Respiratorio:', historia_clinica.c_respiratorio, 
          historia_clinica.c_respiratorio_descripcion
        ]
    end
  end
    
  def experiencias_laborales_33
      move_down 0.5
      table(experiencias_laborales_rows33, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows33
          @historias_clinicas.map do |historia_clinica|

        [
          'Abdominal:', historia_clinica.c_abdominal, 
          historia_clinica.c_abdominal_descripcion
        ]
    end
  end
    
  def experiencias_laborales_34
      move_down 0.5
      table(experiencias_laborales_rows34, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows34
          @historias_clinicas.map do |historia_clinica|

        [
          'Genito Urinario:', historia_clinica.c_genito_urinario, 
          historia_clinica.c_genito_urinario_descripcion
        ]
    end
  end
    
  def experiencias_laborales_35
      move_down 0.5
      table(experiencias_laborales_rows35, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows35
          @historias_clinicas.map do |historia_clinica|

        [
          'Neugologico:', historia_clinica.c_neurologico, 
          historia_clinica.c_neurologico_descripcion
        ]
    end
  end
    
  def experiencias_laborales_36
      move_down 0.5
      table(experiencias_laborales_rows36, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows36
          @historias_clinicas.map do |historia_clinica|

        [
          'Mental:', historia_clinica.c_mental, 
          historia_clinica.c_mental_descripcion
        ]
    end
  end
    
  def experiencias_laborales_37
      move_down 0.5
      table(experiencias_laborales_rows37, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0  
    end
  end

  def experiencias_laborales_rows37
          @historias_clinicas.map do |historia_clinica|

        [
          'Organo De Los Sentidos:', historia_clinica.c_organo_de_los_sentidos, 
          historia_clinica.c_organo_de_los_sentidos_descripcion
        ]
    end
  end
    



    
  def experiencias_laborales_38
      move_down 0.5
      table(experiencias_laborales_rows38, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows38
          @historias_clinicas.map do |historia_clinica|

        [
          'Musculo Esqueletico:', historia_clinica.c_musculo_esqueletico, 
          historia_clinica.c_musculo_esqueletico_descripcion
        ]
    end
  end
    



    
  def experiencias_laborales_39
      move_down 0.5
      table(experiencias_laborales_rows39, :column_widths => [120, 80, 340], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end
  end

  def experiencias_laborales_rows39
          @historias_clinicas.map do |historia_clinica|

        [
          'Piel y Faneras:', historia_clinica.c_piel_y_faneras, 
          historia_clinica.c_piel_y_faneras_descripcion
        ]
    end
  end
    



  def experiencias_laborales_40
      move_down 20
      text "VI. EXAMEN FISICO", size: 15, style: :bold, :color => "22BDC8"


          @historias_clinicas.map do |historia_clinica|

    table([
      [{:content =>  'TA mm/HG: Mm - ' +  historia_clinica.d_ta_mmgh_diastole.to_s,  size: 8 } , 
       {:content => 'TA mm/HG: Hg - ' + historia_clinica.d_ta_mmgh_sistole.to_s,  size: 8} , 
       {:content => 'Frecuencia Cardiaca - ' + historia_clinica.d_frecuencia_cardiaca.to_s,  size: 8}]
    ], :width => bounds.width, :column_widths => [120, 140, 280]) do |t|
      t.cells.border_width = 0
    end
  end  

  end







  def experiencias_laborales_41
      move_down 0.5
      table(experiencias_laborales_rows41, :column_widths => [120, 140, 120, 160], :cell_style => {position: :absulte,  size: 8}) do |t|
          t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows41
          @historias_clinicas.map do |historia_clinica|
        [

          'Frecuencia Respiratoria:', historia_clinica.d_frecuencia_respiratoria,
          '% SAT. de O2 Ambiente:', historia_clinica.d_sat_of_o_ambiente         
        ]
      end
  end


  def experiencias_laborales_41
      move_down 0.5
      table(experiencias_laborales_rows41, :column_widths => [120, 140, 120, 160], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows41
          @historias_clinicas.map do |historia_clinica|
        [

          '% SAT. de O2 Suplementario:', historia_clinica.d_sat_of_o_suplementario,
          'Temperatura:', historia_clinica.d_temperatura         
        ]
      end
  end



  def experiencias_laborales_42
      move_down 0.5
      table(experiencias_laborales_rows42, :column_widths => [120, 140, 120, 160], :cell_style => {position: :absulte,  size: 8}) do |t|
       t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows42
          @historias_clinicas.map do |historia_clinica|
        [

          'Peso En Kilogramos:', historia_clinica.d_peso_en_kilogramos,
          'Talla en Centimetros:', historia_clinica.d_talla_en_centimetros         
        ]
      end
  end



  def experiencias_laborales_43
      move_down 0.5
      table(experiencias_laborales_rows43, :column_widths => [120, 140, 120, 160], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows43
          @historias_clinicas.map do |historia_clinica|
        [

          'Glucometria:', historia_clinica.d_glucometria,
        ]
      end
  end


  def experiencias_laborales_44
      move_down 30
   
      table(experiencias_laborales_rows44_5, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 9}) do |t|
        t.cells.border_width = 0
        t.row(0).font_style = :bold
    end
      table(experiencias_laborales_rows44, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end

    
  end


  def experiencias_laborales_rows44_5
      [['Antecedentes', 'Anormal/Normal', 'Ampliar Información']] +

          @historias_clinicas.map do |historia_clinica|
        [

        ]
      end
  end

  def experiencias_laborales_rows44

          @historias_clinicas.map do |historia_clinica|
        [
          'Cabeza:', historia_clinica.d_cabeza,         
          historia_clinica.d_cabeza_descripcion
        ]
      end
  end


  def experiencias_laborales_45
      move_down 0.5
      table(experiencias_laborales_rows45, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows45
          @historias_clinicas.map do |historia_clinica|
        [

          'Cuello:', historia_clinica.d_cuello,
          historia_clinica.d_cuello_descripcion,
        ]
      end
  end



  def experiencias_laborales_46
      move_down 0.5
      table(experiencias_laborales_rows46, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows46
          @historias_clinicas.map do |historia_clinica|
        [

          'Caja Toracica:', historia_clinica.d_caja_toracica,
          historia_clinica.d_caja_toracica_descripcion
        ]
      end
  end



  def experiencias_laborales_47
      move_down 0.5
      table(experiencias_laborales_rows47, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows47
          @historias_clinicas.map do |historia_clinica|
        [

          'Corazón:', historia_clinica.d_corazon,
          historia_clinica.d_corazon_descripcion
        ]
      end
  end




  def experiencias_laborales_48
      move_down 0.5
      table(experiencias_laborales_rows48, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows48
          @historias_clinicas.map do |historia_clinica|
        [

          'Pulmones:', historia_clinica.d_pulmones,
          historia_clinica.d_pulmones_descripcion
        ]
      end
  end




  def experiencias_laborales_49
      move_down 0.5
      table(experiencias_laborales_rows49, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows49
          @historias_clinicas.map do |historia_clinica|
        [

          'Abdomen:', historia_clinica.d_abdomen,
          historia_clinica.d_abdomen_descripcion,
        ]
      end
  end



  def experiencias_laborales_50
      move_down 0.5
      table(experiencias_laborales_rows50, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows50
          @historias_clinicas.map do |historia_clinica|
        [

          'Genito Urinario:', historia_clinica.d_genito_urinario,
          historia_clinica.d_genito_urinario_descripcion
        ]
      end
  end


  def experiencias_laborales_51
      move_down 0.5
      table(experiencias_laborales_rows51, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows51
          @historias_clinicas.map do |historia_clinica|
        [

          'Recto:', historia_clinica.d_recto,
          historia_clinica.d_recto_descripcion
        ]
      end
  end



  def experiencias_laborales_52
      move_down 0.5
      table(experiencias_laborales_rows52, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows52
          @historias_clinicas.map do |historia_clinica|
        [

          'Extremidades:', historia_clinica.d_extremidades,
          historia_clinica.d_extremidades_descripcion
        ]
      end
  end



  def experiencias_laborales_53
      move_down 0.5
      table(experiencias_laborales_rows53, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows53
          @historias_clinicas.map do |historia_clinica|
        [

          'Piel y Faneras:', historia_clinica.d_piel_y_faneras,
          historia_clinica.d_piel_y_faneras_descripcion
        ]
      end
  end



  def experiencias_laborales_54
      move_down 0.5
      table(experiencias_laborales_rows54, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows54
          @historias_clinicas.map do |historia_clinica|
        [
          'Musculo Esqueletico:', historia_clinica.d_musculo_esqueletico,
          historia_clinica.d_musculo_esqueletico_descripcion
        ]
      end
  end



  def experiencias_laborales_55
      move_down 0.5
      table(experiencias_laborales_rows55, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows55
          @historias_clinicas.map do |historia_clinica|
        [

          'Mental:', historia_clinica.d_mental,
          historia_clinica.d_mental_descripcion
        ]
      end
  end



  def experiencias_laborales_56
      move_down 0.5
      table(experiencias_laborales_rows56, :column_widths => [100, 85, 355], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows56
          @historias_clinicas.map do |historia_clinica|
        [

          'Neurologico:', historia_clinica.d_neurologico,
          historia_clinica.d_neurologico_descripcion
        ]
      end
  end



  def experiencias_laborales_57
      move_down 20
      table(experiencias_laborales_rows57, :column_widths => [100, 120, 140, 180], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows57
          @historias_clinicas.map do |historia_clinica|
        [
          'Apertura Ocular:', 
          if historia_clinica.d_apertura_ocular == 4
            '4 - Espontanea'
          elsif historia_clinica.d_apertura_ocular == 3
            '3 - Al Llamado'
          elsif historia_clinica.d_apertura_ocular == 2
            '2 - Al Dolor'   
          elsif historia_clinica.d_apertura_ocular == 1
            '1 - No Apertura'
          end,

          'Respuesta Verbal:',
          if  historia_clinica.d_respuesta_verbal == 5 
            '5 - Orientada'
          elsif historia_clinica.d_respuesta_verbal == 4 
            '4 - Confusa'
          elsif historia_clinica.d_respuesta_verbal == 3 
            '3 - Palabras'
          elsif historia_clinica.d_respuesta_verbal == 2 
            '2- Sonidos'
          elsif historia_clinica.d_respuesta_verbal == 1 
            '1- Ninguna'
          end


        ]
      end
  end



  def experiencias_laborales_58
      move_down 0.5
      table(experiencias_laborales_rows58, :column_widths => [100, 120, 140, 180], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows58
          @historias_clinicas.map do |historia_clinica|
        [

          'Respueta Motora:', 
          if historia_clinica.d_respuesta_motora == 6 
            '6 - Obedece Ordenes'
          elsif historia_clinica.d_respuesta_motora == 5
            '5 - Localiza Estimulos'
          elsif historia_clinica.d_respuesta_motora == 4
            '4 - Retira El Dolor'
          elsif historia_clinica.d_respuesta_motora == 3
            '3 - Retira En Flexión'  
          elsif historia_clinica.d_respuesta_motora == 2
            '2- Retira En Extensión'
          elsif historia_clinica.d_respuesta_motora == 1
            '1 - Sin Respuesta'
          end,

          'Escala De Glasgow:', historia_clinica.d_escala_de_glasgow
        ]
      end
  end



  def experiencias_laborales_59
      move_down 0.5
      table(experiencias_laborales_rows59, :column_widths => [100, 440], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows59
          @historias_clinicas.map do |historia_clinica|
        [

          'Alteración:', historia_clinica.d_alteracion        ]
      end
  end

  def experiencias_laborales_60
      move_down 0.5
      table(experiencias_laborales_rows60, :column_widths => [100, 440], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows60
          @historias_clinicas.map do |historia_clinica|
        [
          'Otros Signos:', historia_clinica.d_otros_signos        ]
      end
  end


  def experiencias_laborales_61
      move_down 30
      text "VII. ANALISIS", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows61, :column_widths => [540], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows61
          @historias_clinicas.map do |historia_clinica|
        [
          historia_clinica.e_analisis        ]
      end
  end



  def experiencias_laborales_62
      move_down 30
      text "VIII. IMPRESIÓN DIAGNOSTICA", size: 15, style: :bold, :color => "22BDC8"

      table(experiencias_laborales_rows62_5, :column_widths => [200, 75, 265], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
        t.row(0).font_style = :bold
    end 




          @diagnosticos.map do |diagnostico|

    table([
      [{:content =>  '' + diagnostico.cie10.familia.to_s,  size: 9}, 
       {:content => '' + diagnostico.cie10.codigo.to_s,  size: 9} , 
       {:content => '' + diagnostico.cie10.descripcion.to_s.capitalize,  size: 9}]
    ], :width => bounds.width, :column_widths => [200, 75, 265])
    end



  end



  def experiencias_laborales_rows62_5
    [['Familia', 'Codigo', 'Descripción']] +
      @diagnosticos.map do |diagnostico|
        [  
        ]
      end
  end




  def experiencias_laborales_63
      move_down 30
      text "IX. PROCEDIMIENTOS", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows63_5, :column_widths => [200, 75, 265], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
        t.row(0).font_style = :bold
      end 


    @procedimientos.map do |procedimiento|

    table([
      [{:content =>  '' + procedimiento.tratamiento.to_s,  size: 9}, 
       {:content => '' + procedimiento.via_acceso.to_s,  size: 9} , 
       {:content => '' + procedimiento.descripcion.to_s,  size: 9, :align => :center}]
    ], :width => bounds.width, :column_widths => [200, 75, 265]) 
  end


  end


  
  def experiencias_laborales_rows63_5
    [['Tratamiento', 'Via de Acceso', 'Descripción']] +
      @diagnosticos.map do |diagnostico|
        [  
        ]
      end
  end


  def experiencias_laborales_64
      move_down 25
      table(experiencias_laborales_rows64, :column_widths => [67.5, 67.5, 67.5, 67.5, 67.5 ,67.5, 67.5, 67.5], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end


  def experiencias_laborales_rows64
          @historias_clinicas.map do |historia_clinica|
        [
          'Glucometria 1:', historia_clinica.e_glucometria1,
          'Hora 1:', historia_clinica.e_hora1,
          'Glucometria 2:', historia_clinica.e_glucometria2,
          'Hora 2:', historia_clinica.e_hora2        ]
      end
  end



  def experiencias_laborales_65
      move_down 0.5

  end

  def experiencias_laborales_rows65

  end



  def experiencias_laborales_66
      move_down 0.5
      table(experiencias_laborales_rows66, :column_widths => [80,460], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end

  def experiencias_laborales_rows66
          @historias_clinicas.map do |historia_clinica|
        [
          'Electrocardiograma:', historia_clinica.e_analisis        ]
      end
  end


  def experiencias_laborales_67
      move_down 30
      text "X. OBSERVACIONES", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows67, :column_widths => [540], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end

  def experiencias_laborales_rows67
          @historias_clinicas.map do |historia_clinica|
        [
          historia_clinica.e_observaciones_recomendaciones        ]
      end
  end


  def experiencias_laborales_68
      move_down 30
      text "XI. DESENLACE", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows68, :column_widths => [100, 440], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end

  def experiencias_laborales_rows68
          @historias_clinicas.map do |historia_clinica|
        [
          'Evento Adverso:', historia_clinica.e_evento_adverso
        ]
      end
  end


  def experiencias_laborales_69
      move_down 0.5
      table(experiencias_laborales_rows69, :column_widths => [100, 440], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
    end 
  end

  def experiencias_laborales_rows69
          @historias_clinicas.map do |historia_clinica|
        [
          'Estado Paciente:', historia_clinica.e_estado_paciente        
        ]
      end
  end



  def experiencias_laborales_70
      move_down 30
      text "XII. NOTAS DE EVOLUCIÓN", size: 15, style: :bold, :color => "22BDC8"
      table(experiencias_laborales_rows70_5, :column_widths => [100, 100, 100, 100, 140], :cell_style => {position: :absulte,  size: 8}) do |t|
        t.cells.border_width = 0
        t.row(0).font_style = :bold
      end 




          @notas_progreso.map do |nota_progreso|

    table([
      [{:content => '' + nota_progreso.created_at.strftime("%d-%m-%y").to_s,  size: 9}, 
       {:content => '' + nota_progreso.created_at.strftime("%X").to_s,  size: 9} , 
       {:content => '' + nota_progreso.descripcion.to_s,  size: 9, :align => :center},
       {:content => '' + nota_progreso.user.nombres.to_s + nota_progreso.user.apellidos.to_s,  size: 9, :align => :center},
       {:content => '' + nota_progreso.user.rol.nombre.to_s,  size: 9, :align => :center}]
    ], :width => bounds.width) do |t|
      t.cells.border_width = 0
    end  
    end



  end

  def experiencias_laborales_rows70_5
    [['Fecha', 'Hora', 'Descripción', 'Responsable', 'Cargo']] +
          @notas_progreso.map do |nota_progreso|
        [ 
        
        ]
      end
  end











  # Nombre del Medico responsable de la Historia Clinica
  def pie_de_pagina 
    move_down 480
    text "Aerodanidad Teléfono: (57) (4) 448 84 10", size: 8, :align => :center, :style => :bold
    text "Email: comunicaciones@aerosanidadsas.com",  size: 9, :align => :center
    text "www.aerosanidadsas.com",  size: 9, :align => :center
  end

end 
