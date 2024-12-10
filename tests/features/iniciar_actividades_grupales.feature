#language: es
  Característica: Iniciar actividades grupales del ciudadano
    Como ciudadano ecuatoriano
    Quiero iniciar actividades grupales
    Para poder realizar actividades en conjunto con otros ciudadanos y fomentar la participación comunitaria
    Esquema del escenario:
        Dado que el ciudadano desea iniciar una actividad grupal
        Y el ciudadano identifica el tipo de actividad como "<tipo_actividad>"
        Y la descripción de la actividad es "<descripcion_actividad>" en máximo 30 palabras
        Y la ubicación de la actividad es "<ubicacion_actividad>" tanto en tiempo real como seleccionando la ubicación
        Y la fecha de inicio de la actividad es "<fecha_inicio_actividad>"
        Y la fecha de fin de la actividad es "<fecha_fin_actividad>"
        Cuando el ciudadano inicie la actividad
        Entonces se dará aviso a los ciudadanos interesados en la actividad
        Ejemplos: Iniciar actividades grupales
            | tipo_actividad | descripcion_actividad               | ubicacion_actividad   | fecha_inicio_actividad | fecha_fin_actividad |
            | deporte        | Partido de fútbol en el parque      | -0.229850, -78.524949 | 2024-12-01             | 2024-12-01         |
            | deporte        | Clase de aeróbicos en el parque     | -0.206627, -78.486152 | 2024-12-02             | 2024-12-02         |
            | cultura        | Taller de pintura en la biblioteca  | -0.180653, -78.467834 | 2024-12-03             | 2024-12-03         |
            | cultura        | Concierto de música en el parque    | -0.225245, -78.508132 | 2024-12-04             | 2024-12-04         |
            | cultura        | Exposición de arte en la plaza       | -0.254689, -78.512739 | 2024-12-05             | 2024-12-05         |
            | cultura        | Obra de teatro en el teatro          | -0.210845, -78.499278 | 2024-12-06             | 2024-12-06         |
            | cultura        | Presentación de danza en la escuela  | -0.250389, -78.489673 | 2024-12-07             | 2024-12-07         |
      Escenario: Notificar a los vecinos sobre una iniciativa de caridad
        Dado que el ciudadano desea iniciar una actividad grupal
        Y el ciudadano identifica el tipo de actividad como "caridad"
        Y la descripción de la actividad es "Hornado solidario para ayuda de vecino" en máximo 30 palabras
        Y la ubicación de la actividad es "-0.230478, -78.501213" tanto en tiempo real como seleccionando la ubicación
        Y la fecha de inicio de la actividad es "2024-12-08"
        Y la fecha de fin de la actividad es "2024-12-08"
        Cuando el ciudadano inicie la actividad
        Entonces se notificará a los vecinos de la zona sobre la actividad
        #Escenario: Reservar un espacio público para una actividad grupal
