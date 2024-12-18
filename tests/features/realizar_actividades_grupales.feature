#language: es
Característica: Realizar actividades grupales
  Como ciudadano ecuatoriano
  Quiero realizar actividades grupales
  Para socializar actividades en conjunto con otros ciudadanos
      #Escenario: Reservar un espacio público para una actividad grupall
    #Inicio de actividades públicas
    #Inicio de actividades privadas

  #Considerar las reservas
  # Escenario: Asistencia a actividad grupal

  Escenario: Inicio de actividades públicas
    Dado que existen espacios publicos disponibles para reservar
    Y el aforo maximo de este espacio publico es "aforo_maximo" personas
    Y existe una fecha disponible del día "dia_disponible" para esa actividad
    Y existe una hora disponible "hora_disponible" para esa actividad en ese día
    Cuando un ciudadano inicie una actividad en el espacio publico
    Entonces el espacio publico será ocupado para realizar esa actividad
    Y se publicará la actividad en la agenda de actividades públicas
  # Entonces se notificará la confirmación de la reserva al ciudadano solicitante
  Escenario: Inicio de actividades privadas
    Dado que existen espacios publicos disponibles para reservar
    Y el aforo maximo de este espacio publico es "aforo_maximo" personas
    Y existe una fecha disponible del día "dia_disponible" para esa actividad
    Y existe una hora disponible "hora_disponible" para esa actividad en ese día
    Y se tiene una lista de asistentes "lista_asistentes" a la actividad
    Cuando un ciudadano inicie una actividad en el espacio publico
    Entonces se notificará la actividad a los asistentes de la lista
    Y el espacio publico será ocupado para realizar esa actividad

