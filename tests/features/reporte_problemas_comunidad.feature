# Created by Jorman at 9/12/2024
# language: es
Característica: Reportar problemas de la comunidad
  Como ciudadano ecuatoriano
  quiero reportar problemas de la comunidad
  para dar a conocer los problemas que existen

  Esquema del escenario: Reportar problema de tipo fallas en obras públicas
    Dado que el ciudadano identifica un problema existente en una ubicación
    Y el ciudadano identifica el tipo de problema como "<tipo_problema>"
    Y la descripción del problema es "<descripcion_problema>" en máximo 30 palabras
    Y la ubicación del problema es "<ubicacion_problema>" tanto en tiempo real como seleccionando la ubicación
    Cuando el ciudadano reporte el problema
    Entonces se dará aviso a las autoridades para que se solucione el problema
    Ejemplos: Reportes de problemas
      | tipo_problema | descripcion_problema               | ubicacion_problema   |
      | fallas        | Falla en la tubería                | -0.229850, -78.524949|
      | fallas        | Falla en el servicio eléctrico     | -0.206627, -78.486152|
      | baches        | Bache grande en la avenida central | -0.180653, -78.467834|
      | alumbrado     | Poste de luz apagado               | -0.225245, -78.508132|
      | desechos      | Basura acumulada en la esquina     | -0.254689, -78.512739|
      | seguridad     | Robo frecuente en la zona                 | -0.210845, -78.499278|
      | seguridad     | Personas sospechosas cerca del parque     | -0.250389, -78.489673|
      | seguridad     | Falta de señalización en cruce peligroso  | -0.230478, -78.501213|
      | seguridad     | Cercas rotas en la cancha del barrio      | -0.219375, -78.511827|

