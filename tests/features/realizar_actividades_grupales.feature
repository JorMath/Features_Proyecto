#language: es
Característica: Realizar actividades grupales
  Como ciudadano ecuatoriano
  Quiero realizar actividades grupales
  Para socializar actividades en conjunto con otros ciudadanos

  Escenario Outline: Inicio de actividades públicas
    Dado que existe al menos un espacio público disponible "<espacio>" para reservar en los espacios públicos
    Y el aforo máximo de este espacio público es "<aforo>" personas
    Y existe una fecha disponible del día "<día>" para esa actividad
    Y existe una hora disponible "<hora>" para esa actividad en ese día
    Cuando un ciudadano inicie una actividad en el espacio público "<espacio>"
    Y se elija la fecha "<día>" y la hora "<hora>" para la actividad
    Entonces el espacio público será ocupado para realizar esa actividad en el día "<día>" a las "<hora>"
    Y se publicará la actividad en la agenda de actividades públicas

    Examples:
      | espacio | aforo | día     | hora   |
      | A       | 30    | Jueves  | 15:00  |
      | B       | 50    | Viernes | 10:00  |
      | C       | 20    | Sábado  | 18:00  |

  Escenario Outline: Inicio de actividades privadas
    Dado que existe un espacio público disponible "<espacio>" para reservar
    Y el aforo máximo de este espacio público es "<aforo>" personas
    Y existe una fecha disponible del día "<día>" para esa actividad
    Y existe una hora disponible "<hora>" para esa actividad en ese día
    Y se tiene una lista de asistentes "<asistentes>" a la actividad
    Cuando un ciudadano inicie una actividad en el espacio público "<espacio>"
    Y se elija la fecha "<día>" y la hora "<hora>" para la actividad
    Entonces el espacio público será ocupado para realizar esa actividad en el día "<día>" a las "<hora>"
    Y se notificará la actividad a los asistentes "<asistentes>"

    Examples:
      | espacio | aforo | día     | hora   | asistentes                 |
      | A       | 30    | Jueves  | 15:00  | Pedro, Andrea, Daniel      |
      | B       | 50    | Viernes | 10:00  | Carla, José, Mariana       |
      | C       | 20    | Sábado  | 18:00  | Luis, Camila, Santiago     |

