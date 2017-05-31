module HistoriaClinicaDecorator

  def select_condition
    [
      ['Pasajero', 'Pasajero'],
      ['Tripulante', 'Tripulante'],
      ['Empleado', 'Empleado'],
      ['Visitante', 'Visitante'],
      ['Otro', 'Otro']
    ]
  end

  def select_type_service
    [
      ['Atención prehospitalaria', 'Atención prehospitalaria'],
      ['Valoración aptitud de vuelo', 'Valoración aptitud de vuelo'],
      ['Enfermedad general', 'Enfermedad general'],
      ['Accidente laboral', 'Accidente laboral'],
      ['Accidente de transito', 'Accidente de transito'],
      ['Traslado', 'Traslado'],
      ['Otro tipo de accidente', 'Otro tipo de accidente'],
      ['Remisión', 'Remisión']
    ]
  end

  def select_lugar
    [
      ['Interno(Sanidad)', 'Interno(Sanidad)'],
      ['Externo', 'Externo'],
    ]
  end


  def select_lugar
    [
      ['Interno(Sanidad)', 'Interno(Sanidad)'],
      ['Externo', 'Externo'],
    ]
  end



  def select_patologia
    [
      ['Aparato Circulatorio', 'Aparato Circulatorio'],
      ['Aparato Respiratorio Alto', 'Aparato Respiratorio Alto'],
      ['Aparato Respiratorio Bajo', 'Aparato Respiratorio Bajo'],
      ['E. Aparato Digestivo', 'E. Aparato Digestivo'],
      ['E. Aparato Genital', 'E. Aparato Genital'],
      ['E. Aparato Urinario', 'E. Aparato Urinario'],
      ['E. Endocr. Nutr Metab', 'E. Endocr. Nutr Metab'],
      ['E. Piel Y T.O.S', 'E. Piel Y T.O.S'],
      ['E. Organos De Los Sentidos', 'E. Organos De Los Sentidos'],
      ['E. Parasit', 'E. Parasit'],
      ['E. Sangre Organ H', 'E. Sangre Organ H'],
      ['E. Sistema Muscular', 'E. Sistema Muscular'],
      ['E. Sistema Oseo', 'E. Sistema Oseo'],
      ['Embarazo Complicado', 'Embarazo Complicado'],
      ['Embarazo Sin Complicaciones', 'Embarazo Sin Complicaciones'],
      ['E. Congenitas', 'E. Congenitas'],
      ['Enf. Infecciosas', 'Enf. Infecciosas'],
      ['Enf. Perinatal', 'Enf. Perinatal'],
      ['Enf. Sist. Nervioso', 'Enf. Sist. Nervioso'],
      ['Envenenamiento', 'Envenenamiento'],
      ['Signos Y Sintomas Mal Definidos', 'Signos Y Sintomas Mal Definidos'],
      ['Transtornos Mentales', 'Transtornos Mentales'],
      ['Traumas', 'Traumas'],
      ['Tumorales', 'Tumorales'],
      ['Otros', 'Otros'],
      ['Post Operatorios Varios', 'Post Operatorios Varios'],

    ]
  end

  def select_otras_patologias
    [
      ['Accidente Cerebral', 'Accidente Cerebral'],
      ['Cancer', 'Cancer'],
      ['Diabetes Mellitus', 'Diabetes Mellitus'],
      ['Dolor Abdominal', 'Dolor Abdominal'],
      ['Dolor Precordial/ Angina', 'Dolor Precordial/ Angina'],
      ['Enf. Diarreica Aguda', 'Enf. Diarreica Aguda'],
      ['Epoc', 'Epoc'],
      ['Fracturas', 'Fracturas'],
      ['Heridas Por Corto Punzante', 'Heridas Por Corto Punzante'],
      ['Hipertension Arterial', 'Hipertension Arterial'],
      ['Intoxicacion', 'Intoxicacion'],
      ['Neumonia', 'Neumonia'],
      ['Neurologicas', 'Neurologicas'],
      ['Quemaduras', 'Quemaduras'],
      ['Recien Nacidos', 'Recien Nacidos'],
      ['Rinofaringitis', 'Rinofaringitis'],
      ['Odontalgias (Barotrauma)', 'Odontalgias (Barotrauma)'],
      ['Cefalea (Barotrauma)', 'Cefalea (Barotrauma)'],
      ['Otalgias (Barotrauma)', 'Otalgias (Barotrauma)'],
      ['Psiquiatricas', 'Psiquiatricas'],
      ['Ninguno', 'Ninguno'],
    ]
  end


  def select_post_operatorios
    [
      ['Post Operatorios Cirugia Plastica', 'Post Operatorios Cirugia Plastica'],
      ['Post Operatorios Cardiovasculares, Toracicas Y Abdominales', 'Post Operatorios Cardiovasculares, Toracicas Y Abdominales'],
      ['Post Operatorios Ortopedicos', 'Post Operatorios Ortopedicos'],
      ['Post Operatorio Otorrino', 'Post Operatorio Otorrino'],
      ['Post Operatorio Oftalmologico', 'Post Operatorio Oftalmologico'],
      ['Post Operatorio Neurologico', 'Post Operatorio Neurologico'],
      ['Otros Post Operatorios', 'Otros Post Operatorios']
    ]
  end




  def select_accidentes_especiales
    [
      ['Accidente Ofidico', 'Accidente Ofidico  '],
      ['Rabia', 'Rabia'],
      ['Chikungunya', 'Chikungunya'],
      ['Colera', 'Colera'],
      ['Denge', 'Denge'],
      ['Ebola', 'Ebola'],
      ['Esi - Ira Grave', 'Esi - Ira Grave'],
      ['Eta', 'Eta'],
      ['Malaria', 'Malaria'],
      ['Sarampion', 'Sarampion'],
      ['Rubeola', 'Rubeola'],
      ['Varicela', 'Varicela'],
      ['Zika', 'Zika'],
      ['Tbc', 'Tbc'],
      ['Intoxicaciones', 'Intoxicaciones'],
      ['Evento Sin Establecer', 'Evento Sin Establecer'],
      ['Ninguno', 'Ninguno'],
      ['No Aplica', 'No Aplica'],
    ]
  end




  def select_notificacion_obligatoria
    [
      ['ACCIDENTE OFÍDICO - 100', 'ACCIDENTE OFÍDICO - 100'],
      ['BAJO PESO AL NACER - 110', 'BAJO PESO AL NACER - 110'],
      ['MORBILIDAD POR EDA  - 998', 'MORBILIDAD POR EDA  - 998'],
      ['VARICELA COLECTIVO - 830', 'VARICELA COLECTIVO - 830'],
      ['EVENTO SIN ESTABLECER - 900', 'EVENTO SIN ESTABLECER - 900'],
      ['CHIKUNGUÑA - 910', 'CHIKUNGUÑA - 910'],
      ['CA MAMA Y CUELLO UTERINO - 155', 'CA MAMA Y CUELLO UTERINO - 155'],
      ['CÁNCER EN MENORES DE 18 - 115', 'CÁNCER EN MENORES DE 18 - 115'],
      ['CHAGAS - 205', 'CHAGAS - 205'],
      ['CHIKUNGUNYA - 217', 'CHIKUNGUNYA - 217'],
      ['COLERA - 200', 'COLERA - 200'],
      ['CONSUMO SUSTANCIAS PSICOATIVAS - 202', 'CONSUMO SUSTANCIAS PSICOATIVAS - 202'],
      ['DEFECTOS CONGENITOS 215', 'DEFECTOS CONGENITOS 215'],
      ['DENGUE - 210-220-580', 'DENGUE - 210-220-580'],
      ['DESNUTRICIÓN EN MENORES - 113', 'DESNUTRICIÓN EN MENORES - 113'],
      ['DIFTERIA - 230', 'DIFTERIA - 230'],
      ['EDA POR ROTAVIRUS - 605', 'EDA POR ROTAVIRUS - 605'],
      ['ENFERMEDADES HUERFANAS - 342', 'ENFERMEDADES HUERFANAS - 342'],
      ['ESAVI - 298', 'ESAVI - 298'],
      ['ESI-IRAG - 345', 'ESI-IRAG - 345'],
      ['ETA - 355' , 'ETA - 355'],
      ['ETA COLECTIVO - 350' , 'ETA COLECTIVO - 350'],
      ['EXPOSICION A FLUOR - 228', 'EXPOSICION A FLUOR - 228'],
      ['FIEBRE AMARILLA -310', 'FIEBRE AMARILLA -310'],
      ['HEPATITIS B C Y DELTA - 340', 'HEPATITIS B C Y DELTA - 340'],
      ['INTENTO-SUICIDIO - 356', 'INTENTO-SUICIDIO - 356'],
      ['INTOXICACIONES - 365', 'INTOXICACIONES - 365'],
      ['IRAG INUSITADO - 348', 'IRAG INUSITADO - 348'],
      ['LEISHMANIASIS 420-430-440', 'LEISHMANIASIS 420-430-440'],
      ['LEPRA - 450', 'LEPRA - 450'],
      ['LEPTOSPIROSIS - 455', 'LEPTOSPIROSIS - 455'],
      ['LESIONES DE CAUSA EXTERNA - 453', 'LESIONES DE CAUSA EXTERNA - 453'],
      ['LESIONES POR ARTEFACTOS EXPLOSIVOS - 452', 'LESIONES POR ARTEFACTOS EXPLOSIVOS - 452'],
      ['MALARIA - 465', 'MALARIA - 465'],
      ['MENINGITIS F510 - 535', 'MENINGITIS F510 - 535'],
      ['MORBILIDAD MATERNA EXTREMA - 549', 'MORBILIDAD MATERNA EXTREMA - 549'],
      ['MORBILIDAD POR IRA - 995', 'MORBILIDAD POR IRA - 995'],
      ['MORTALIDAD MATERNA - 550', 'MORTALIDAD MATERNA - 550'],
      ['MORTALIDAD PERINATAL Y NEONATAL - 560', 'MORTALIDAD PERINATAL Y NEONATAL - 560'],
      ['MORTALIDAD POR DESNUTRICION - 112', 'MORTALIDAD POR DESNUTRICION - 112'],
      ['MORTALIDAD POR EDA - 590', 'MORTALIDAD POR EDA - 590'],
      ['MORTALIDAD POR IRA - 600', 'MORTALIDAD POR IRA - 600'],
      ['PARALISIS FLACIDA A. -610',  'PARALISIS FLACIDA A. -610'],
      ['PREVENCION Y CONTROL DE RABIA -680', 'PREVENCION Y CONTROL DE RABIA -680'],
      ['RABIA ANIMAL 650-652', 'RABIA ANIMAL 650-652'],
      ['SARAMPION  - 730', 'SARAMPION  - 730'],
      ['RUBEOLA - 710', 'RUBEOLA - 710'],
      ['SÍFILIS GESTACIONAL - 750', 'SÍFILIS GESTACIONAL - 750'],
      ['SÍFILIS CONGÉNITA - 740', 'SÍFILIS CONGÉNITA - 740'],
      ['SINDROME FEBRIL ICTÉRICO - 222', 'SINDROME FEBRIL ICTÉRICO - 222'],
      ['SINDROME RUBEOLA CONGENITA - 720', 'SINDROME RUBEOLA CONGENITA - 720'],
      ['TB FARMACORRESISTENTE - 825', 'TB FARMACORRESISTENTE - 825'],
      ['TETANOS ACCIDENTAL - 760', 'TETANOS ACCIDENTAL - 760'],
      ['TETANOS NEONATAL - 770', 'TETANOS NEONATAL - 770'],
      ['TOSFERINA - 800', 'TOSFERINA - 800'],
      ['TRACOMA - 305', 'TRACOMA - 305'],
      ['TUBERCULOSIS - 815', 'TUBERCULOSIS - 815'],
      ['VIGILANCIA INTEGRADA RABIA HUMANA - 307', 'VIGILANCIA INTEGRADA RABIA HUMANA - 307'],
      ['ZIKA - 895', 'ZIKA - 895'],
      ['NINGUNO', 'NINGUNO']
    ]
  end



  def select_emergencias
    [
      ['Accidentes Aereos', 'Accidentes Aereos'],
      ['Alistamientos', 'Alistamientos'],
      ['Contingencias', 'Contingencias'],
      ['Emergencia Salud Publica', 'Emergencia Salud Publica'],
      ['Ninguno', 'Ninguno'],
      ['No Aplica', 'No Aplica'],
    ]
  end



  def select_tipo_de_vuelo
    [
      ['Ambulancia', 'Ambulancia'],
      ['Comercial', 'Comercial'],
      ['Charter', 'Charter'],
      ['No Aplica', 'No Aplica'],
    ]
  end

end
