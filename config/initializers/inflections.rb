# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
    inflect.irregular 'eps', 'epses'
    inflect.irregular 'arl', 'arles'
    inflect.irregular 'rol', 'roles'
    inflect.irregular 'ciudad', 'ciudades'
    inflect.irregular 'historia_clinica', 'historias_clinicas'
    inflect.irregular 'nota_progreso', 'notas_progreso'
    inflect.irregular 'cie10', 'cie10s'
    inflect.irregular 'pais', 'paises'
    inflect.irregular 'procedimiento_medico_y_de_enfermeria', 'procedimientos_medicos_y_de_enfermeria'
    inflect.irregular 'emergencia', 'emergencias'
#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
