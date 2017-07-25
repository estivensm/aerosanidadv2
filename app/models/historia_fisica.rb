class HistoriaFisica < ActiveRecord::Base
	  belongs_to :user
  belongs_to :paciente
  belongs_to :historia_fisica
  has_many :notas_progreso
  mount_uploader :adjunto, HistoriaFisicaUploader
  
end
