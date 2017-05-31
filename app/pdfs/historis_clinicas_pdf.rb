=begin
  
NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)
  
=end


class HistorisClinicasPdf < Prawn::Document
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
      total1 = "#{
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Otro").count
      }"

      acumulado1 = "#{
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Otro").count
      }"


      #2 #################################################################################################
      total2 = "#{
      HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Otro").count
      }"


      acumulado2 = total1.to_i + total2.to_i


      #3 #################################################################################################
      total3 = "#{
      HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Otro").count
      }"


      acumulado3 = total1.to_i + total2.to_i + total3.to_i



      #4 #################################################################################################
      total4 = "#{
      HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Otro").count
      }"



      acumulado4 = total1.to_i + total2.to_i + total3.to_i + total4.to_i



      #5 #################################################################################################
      total5 = "#{
      HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Otro").count}"

      acumulado5 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i



      #6 #################################################################################################
      total6 = "#{HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Otro").count}"

      acumulado6 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i



      #7 #################################################################################################
      total7 = "#{HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Otro").count}"

      acumulado7 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i


      #8 #################################################################################################
      total8 = "#{HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Otro").count}"



      acumulado8 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i


      #9 #################################################################################################
      total9 = "#{HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Otro").count}"


      acumulado9 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i


      #10 #################################################################################################
      total10 = "#{HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Otro").count}"


      acumulado10 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i


      #11 #################################################################################################
      total11 = "#{HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Otro").count}"



      acumulado11 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i


      #12 #################################################################################################
      total12 = "#{HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Otro").count}"


      acumulado12 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i



      #13 #################################################################################################
      total13 = "#{HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Otro").count}"


      acumulado13 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i


      #14 #################################################################################################
      total14 = "#{HistoriaClinica.where(:a_empresa => "BOMBEROS").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "BOMBEROS").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "BOMBEROS").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "BOMBEROS").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "BOMBEROS").where(:a_condicion => "Otro").count}"




      acumulado14 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i


      #15 #################################################################################################
      total15 = "#{HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Otro").count}"


      acumulado15 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + 
      total13.to_i + total14.to_i + total15.to_i


      #16 #################################################################################################
      total16 = "#{HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Otro").count}"



      acumulado16 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + 
      total13.to_i + total14.to_i + total15.to_i + total16.to_i


      #17 #################################################################################################
      total17 = "#{HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Otro").count}"


      acumulado17 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i


      #18 #################################################################################################
      total18 = "#{HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Otro").count}"


      acumulado18 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i


      #19 #################################################################################################
      total19 = "#{HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Otro").count}"


      acumulado19 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i


      #20 #################################################################################################
      total20 = "#{HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Otro").count}"



      acumulado20 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i



      #21 #################################################################################################
      total21 = "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Otro").count}"


      acumulado21 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + 
      total20.to_i + total21.to_i


      #22 #################################################################################################
      total22 = "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Otro").count}"


      acumulado22 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i +
      total21.to_i + total22.to_i

      #23 #################################################################################################
      total23 = "#{HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Otro").count}"


      acumulado23 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i

      #24 #################################################################################################
      total24 = "#{HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Otro").count}"


      acumulado24 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i

      #25 #################################################################################################
      total25 = "#{HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Otro").count}"


      acumulado25 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i

      #26 #################################################################################################
      total26 = "#{HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Otro").count}"


      acumulado26 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i


      #27 #################################################################################################
      total27 = "#{HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Otro").count}"



      acumulado27 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i


      #28 #################################################################################################
      total28 = "#{HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Otro").count}"


      acumulado28 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i



      #29 #################################################################################################
      total29 = "#{HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Otro").count}"


      acumulado29 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i



      #30 #################################################################################################
      total30 = "#{HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Otro").count}"


      acumulado30 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i



      #31 #################################################################################################
      total31 = "#{HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Otro").count}"


      acumulado31 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total31.to_i




      #32 #################################################################################################
      total32 = "#{HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Otro").count}"



      acumulado32 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i



      #33 #################################################################################################     
      total33 = "#{HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Otro").count}"



      acumulado33 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i


      #34 #################################################################################################
      total34 = "#{HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Otro").count}"



      acumulado34 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i   


      #35 #################################################################################################
      total35 = "#{HistoriaClinica.where(:a_empresa => "total35").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "total35").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "total35").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "total35").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "total35").where(:a_condicion => "Otro").count}"


      acumulado35 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i   


      #36 #################################################################################################
      total36 = "#{HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Otro").count}"


      acumulado36 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i  


      #37 #################################################################################################
      total37 = "#{HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Otro").count}"


      acumulado37 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i 


      #38 #################################################################################################
      total38 = "#{HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Otro").count}"



      acumulado38 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i


      #39 #################################################################################################
      total39 = "#{HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Otro").count}"


      acumulado39 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i 


      #40 #################################################################################################
      total40 = "#{HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Otro").count}"

      acumulado40 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i



      #41 #################################################################################################
      
      total41 = "#{HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Otro").count}"


      acumulado41 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i + total41.to_i


      #42 #################################################################################################

      total42 = "#{HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Otro").count}"


      acumulado42 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i + total41.to_i + 
      total42.to_i


      #43 #################################################################################################
      total43 = "#{HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Otro").count}"



      acumulado43 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i + total41.to_i + 
      total42.to_i + total43.to_i


      #44 #################################################################################################
      total44 = "#{HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Otro").count}"


      acumulado44 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i + total41.to_i + 
      total42.to_i + total43.to_i +  total44.to_i 

      #45 #################################################################################################
      total45 = "#{HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Otro").count}"


      acumulado45 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i + total41.to_i + 
      total42.to_i + total43.to_i + total44.to_i + total45.to_i 


      #46 #################################################################################################
      total46 = "#{HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Pasajero").count + 
      HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Tripulante").count +
      HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Empleado").count +
      HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Visitante").count +
      HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Otro").count}"


      acumulado46 = total1.to_i + total2.to_i + total3.to_i + total4.to_i + total5.to_i + total6.to_i + 
      total7.to_i + total8.to_i + total9.to_i + total10.to_i + total11.to_i + total12.to_i + total13.to_i + 
      total14.to_i + total15.to_i + total16.to_i + total17.to_i + total18.to_i + total19.to_i + total20.to_i + 
      total21.to_i + total22.to_i + total23.to_i + total24.to_i + total25.to_i  + total26.to_i + total27.to_i + 
      total28.to_i + total29.to_i + total30.to_i + total31.to_i + total32.to_i + total33.to_i + total34.to_i + 
      total35.to_i + total36.to_i + total37.to_i + total38.to_i + total39.to_i + total40.to_i + total41.to_i + 
      total42.to_i + total43.to_i + total44.to_i + total45.to_i + total46.to_i 






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
     [{:content => "Nombre",   size: 8}, 
      {:content => "Pasajeros",  size: 8},
      {:content => 'Tripulantes',  size: 8},
      {:content => 'Empleados',  size: 8}, 
      {:content => 'Visitantes',  size: 8},
      {:content => 'otros',  size: 8},
      {:content => "Total",  size: 8}, 
      {:content => "Acumulado",  size: 8}]], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0
       t.cells.font_style = :bold
      end


    table([
     [{:content => "A.A.A",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "A.A.A").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total1,  size: 8},
      {:content => "#{acumulado1}",  size: 8}]], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end





    table([
     [{:content => "ACA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Empleado").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ACA").where(:a_condicion => "Otro").count}",  size: 8}, 
      {:content => total2,  size: 8},
      {:content => "#{acumulado2}",  size: 8}]], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end

    table([
     [{:content => "ADA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ADA").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total3,  size: 8},
      {:content => "#{acumulado3}",  size: 8}]], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "AEROCIVIL",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total4,  size: 8},
      {:content => "#{acumulado4}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "AEROGAL",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROGAL").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total5,  size: 8},
      {:content => "#{acumulado5}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


      table([
     [{:content => "AEROPOSTAL",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROPOSTAL").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total6,  size: 8},
      {:content => "#{acumulado6}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end



    table([
     [{:content => "AEROREPUBLICA",   size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROREPUBLICA").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total7,  size: 8},
      {:content => "#{acumulado7}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "AEROSANIDAD",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROSANIDAD").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total8,  size: 8},
      {:content => "#{acumulado8}",  size: 8}
    ]
    ], :width => bounds.width,
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "AEXPA",   size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEXPA").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total9,  size: 8},
      {:content => "#{acumulado9}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end

    table([
     [{:content => "AIR PLAN",   size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIR PLAN").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total10,  size: 8},
      {:content => "#{acumulado10}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end

    table([
     [{:content => "AIRES",   size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AIRES").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total11,  size: 8},
      {:content => "#{acumulado11}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "AMERICAN AIRLINES",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AMERICAN AIRLINES").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total12,  size: 8},
      {:content => "#{acumulado12}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "AVIANCA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AVIANCA").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total13,  size: 8},
      {:content => "#{acumulado13}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end

    table([
     [{:content => "BOMBEROS",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "AEROCIVIL").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total14,  size: 8},
      {:content => "#{acumulado14}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end



    table([
     [{:content => "COMERCIO",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COMERCIO").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total15,  size: 8},
      {:content => "#{acumulado15}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end


    table([
     [{:content => "CONSTRUCTORA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "CONSTRUCTORA").where(:a_condicion => "Otro").count}",  size: 8},
      {:content => total16,  size: 8},
      {:content => "#{acumulado16}",  size: 8}
    ]
    ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
       t.cells.border_width = 0

      end

  table([
   [{:content => "COPA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "COPA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total17,  size: 8},
    {:content => "#{acumulado17}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "DEPRISA CARGA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DEPRISA CARGA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total18,  size: 8},
    {:content => "#{acumulado18}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "DESACOL",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "DESACOL").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total19,  size: 8},
    {:content => "#{acumulado19}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end




  table([
   [{:content => "EASY FLY",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EASY FLY").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total20,  size: 8},
    {:content => "#{acumulado20}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end




  table([
   [{:content => "EMPRESAS DE ASEO",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE ASEO").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total21,  size: 8},
    {:content => "#{acumulado21}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "EMPRESAS DE VIGILANCIA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EMPRESAS DE VIGILANCIA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total22,  size: 8},
    {:content => "#{acumulado22}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "ENERGIZAR",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ENERGIZAR").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total23,  size: 8},
    {:content => "#{acumulado23}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "EQUIPAJEROS",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "EQUIPAJEROS").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total24,  size: 8},
    {:content => "#{acumulado24}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "IDEAM",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "IDEAM").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total25,  size: 8},
    {:content => "#{acumulado25}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "INMIGRACION - DIAN",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "INMIGRACION - DIAN").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total26,  size: 8},
    {:content => "#{acumulado26}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "LAN",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAN").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total27,  size: 8},
    {:content => "#{acumulado27}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "LAS LOMAS",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LAS LOMAS").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total28,  size: 8},
    {:content => "#{acumulado28}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "LASA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "LASA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total29,  size: 8},
    {:content => "#{acumulado29}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "PANTURISMO",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PANTURISMO").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total30,  size: 8},
    {:content => "#{acumulado30}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "PARTICULAR",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "PARTICULAR").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total31,  size: 8},
    {:content => "#{acumulado31}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "POLICIA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "POLICIA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total32,  size: 8},
    {:content => "#{acumulado32}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "RESTAURANTES",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "RESTAURANTES").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total33,  size: 8},
    {:content => "#{acumulado33}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end




  table([
   [{:content => "SAI",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SAI").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total34,  size: 8},
    {:content => "#{acumulado34}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "SANIDAD",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SANIDAD").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "SANIDAD").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SANIDAD").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SANIDAD").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SANIDAD").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total35,  size: 8},
    {:content => "#{acumulado35}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "SATENA - FAC",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SATENA - FAC").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total36,  size: 8},
    {:content => "#{acumulado36}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end


  table([
   [{:content => "SIALAS",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SIALAS").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total37,  size: 8},
    {:content => "#{acumulado37}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "SPIRIT",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "SPIRIT").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total38,  size: 8},
    {:content => "#{acumulado38}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "TACA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TACA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total39,  size: 8},
    {:content => "#{acumulado39}",  size: 8}
  ]
  ], :width => bounds.width,
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "TAMPA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TAMPA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total40,  size: 8},
    {:content => "#{acumulado40}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  table([
   [{:content => "TERPEL",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TERPEL").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total41,  size: 8},
    {:content => "#{acumulado41}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "TRANSPORTADORES",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "TRANSPORTADORES").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total42,  size: 8},
    {:content => "#{acumulado42}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "VIVA COLOMBIA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VIVA COLOMBIA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total43,  size: 8},
    {:content => "#{acumulado43}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "VUELOS AMBULANCIA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS AMBULANCIA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total44,  size: 8},
    {:content => "#{acumulado44}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "VUELOS PARTICULARES",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "VUELOS PARTICULARES").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total45,  size: 8},
    {:content => "#{acumulado45}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end



  table([
   [{:content => "ZONA DE CARGA",   size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Pasajero").count}",  size: 8}, 
      {:content => "#{HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Tripulante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Empleado").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Visitante").count}",  size: 8},
      {:content => "#{HistoriaClinica.where(:a_empresa => "ZONA DE CARGA").where(:a_condicion => "Otro").count}",  size: 8},
    {:content => total46,  size: 8},
    {:content => "#{acumulado46}",  size: 8}
  ]
  ], :width => bounds.width, 
      :column_widths => [155, 55, 55, 55, 55, 55, 55, 55]) do |t|
     t.cells.border_width = 0

    end

  def usuarios_rows


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
