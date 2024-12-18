#language: es
Característica: Realizar actividades grupales
  Como ciudadano ecuatoriano
  Quiero realizar actividades grupales
  Para socializar actividades en conjunto con otros ciudadanos

  Esquema del escenario: Inicio de actividades públicas
    Dado que existe por lo menos un "<espacio_público>" en la ciudad
    Y el espacio público tiene disponibilidad en algún tiempo
    Cuando el ciudadano inicie una actividad en el espacio público A en un rango de tiempo determinado
    Entonces el espacio público será ocupado para realizar esa actividad en el tiempo elegido
    Y se publicará la actividad en la agenda de actividades públicas
  Ejemplos:
    | espacio_público      | tiempo_disponible   |
    | parque principal     | 2024-12-20T15:00:00 |
    | sala de conferencias | 2024-12-21T18:30:00 |
    | auditorio municipal  | 2024-12-22T10:00:00 |

  Esquema del escenario:
    Dado que existe por lo menos un "<espacio_público>" en la ciudad
    Y el espacio público tiene disponibilidad en algún "<tiempo_disponible>"
    Cuando el ciudadano inicie una actividad privada en el espacio publico "<espacio_público>" en un rango de tiempo determinado
    Entonces el espacio público será ocupado para realizar esa actividad en el tiempo elegido
    Y se notificará la actividad a los asistentes "<asistentes>"
    Ejemplos:
      | espacio_público           | tiempo_disponible       | asistentes                                       |
      | parque ecológico          | 2024-12-19T14:00:00    | ["juan@mail.com", "ana@mail.com", "luis@mail.com"] |
      | plaza cultural            | 2024-12-20T09:30:00    | ["sofia@mail.com", "pedro@mail.com"]              |
      | explanada deportiva       | 2024-12-21T17:00:00    | ["carlos@mail.com", "laura@mail.com"]             |


