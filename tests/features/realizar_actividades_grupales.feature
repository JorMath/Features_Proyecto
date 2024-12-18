#language: es
Característica: Realizar actividades grupales
  Como ciudadano ecuatoriano
  Quiero realizar actividades grupales
  Para socializar actividades en conjunto con otros ciudadanos

  Esquema del escenario: Inicio de actividades públicas
    Dado que existe por lo menos un espacio público en la ciudad
    Y el espacio público tiene disponibilidad en algún tiempo
    Cuando el ciudadano inicie una actividad en el espacio público A en un rango de tiempo determinado
    Entonces el espacio público será ocupado para realizar esa actividad en el tiempo elegida
    Y se publicará la actividad en la agenda de actividades públicas


  Esquema del escenario:
    Dado que existe por lo menos un "<espacio_público>" en la ciudad
    Y el espacio público tiene disponibilidad en algún "<tiempo_disponible>"
    Cuando el ciudadano inicie una actividad privada en el espacio publico "<espacio_eligido>" en un rango de tiempo determinado
    Entonces el espacio público será ocupado para realizar esa actividad en el tiempo elegida
    Y se notificará la actividad a los asistentes "<asistentes>"


