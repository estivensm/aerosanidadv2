=begin

NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)

=end


class UsersPdf < Prawn::Document
  def initialize(usuarios)
    super()
    @usuarios = usuarios
    logo_1
    usuarios_parte_1
  end

  def logo_1
      image = "#{Rails.root}/app/assets/images/Logo/LogoPdf.png"
  end


  def usuarios_parte_1
      move_down 30
      text "I. DATOS USUARIOS", size: 15, style: :bold, :color => "22BDC8"

      table(usuarios_titulo, :column_widths => [105, 120, 150, 165], :cell_style => {position: :absulte,  size: 8}) do
      	          row(0).font_style = :bold
    end

      table(usuarios_rows, :column_widths => [105, 120, 150, 165], :cell_style => {position: :absulte,  size: 8}) do
    end
  end


  def usuarios_titulo
      [['Nombres', 'Apellidos', 'Tipo Documento', 'Documento']] +

          @usuarios.map do |usuario|
        [

        ]
      end
  end


  def usuarios_rows
          @usuarios.map do |usuario|
        [
          usuario.nombres ,
          usuario.apellidos ,
          usuario.tipo_documento ,
          usuario.documento
        ]
    end
  end


end
