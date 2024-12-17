# Created by cjzam at 9/12/2024
# language: es
Característica: Manejar problemática evidenciada en la ciudad
  Como entidad pública
  Quiero solucionar los problemas existentes que competen a mi cargo en la ciudad
  Para cumplir con mi labor pública

  Escenario: Reporte ciudadano notificado
    Dado que se reporta un problema de tipo "<tipo_problema>"
    Y la entidad pública competente para tratar el problema es "<entidad_publica>"
    Cuando este problema haya sido reportado "<veces_reportadas>" veces Y para tratar el problema este debe ser reportado como mínimo "<numero_minimo_de_reporte_para_consideracion>"
    Entonces se le asignará al equipo técnico una cita para evaluar la problemática

    Ejemplos:
    |tipo_problema  | entidad_publica | veces_reportadas |
    |alcantarillado | EMMAPS          | 1                |
    |electrico      | EEQ             | 2                |
    |baches         | EPMMOP          | 3                |
    |alcantarillado | EMMAPS          | 7                |
    |electrico      | EEQ             | 1                |
    |baches         | EPMMOP          | 1                |

Escenario: evolución del estado del reporte del ciudadano 