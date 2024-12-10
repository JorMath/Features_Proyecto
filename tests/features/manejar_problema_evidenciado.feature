# Created by cjzam at 9/12/2024
# language: es
Característica: Manejar problemática evidenciada en la ciudad
  Como entidad pública
  Quiero solucionar los problemas existentes que competen a mi cargo en la ciudad
  Para cumplir con mi labor pública

  Escenario: Problema evidenciado en la ciudad
    Dado que se reporta un problema "<tipo_problema>"
    Y la entidad pública competente para tratar el problema es "<entidad_publica>"
    Cuando este problema haya sido reportado "<veces_reportadas>" veces
    Entonces se le asignará al equipo técnico una cita para evaluar la problemática

    Ejemplos:
    |tipo_problema  | entidad_publica | veces_reportadas |
    |alcantarillado | EMMAPS          | 1                |
    |electrico      | EEQ             | 2                |
    |baches         | EPMMOP          | 3                |
    |alcantarillado | EMMAPS          | 7                |
    |electrico      | EEQ             | 1                |
    |baches         | EPMMOP          | 1                |