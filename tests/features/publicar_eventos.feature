#language: es
  Característica: Publicar eventos
    Como Institución Pública
    Quiero publicar eventos públicos o privados
    Para informar a los ciudadanos sobre eventos que se realizarán en la ciudad
    Escenario: Publicar un evento comunitario
        Dado que la institución pública desea publicar un evento comunitario
        Y la institución pública identifica el tipo de evento como "comunitario"
        Y la descripción del evento es "Feria de emprendedores en el parque" en máximo 30 palabras
        Y la ubicación del evento es "-0.229850, -78.524949" tanto en tiempo real como seleccionando la ubicación
        Y la fecha de inicio del evento es "2024-12-01"
        Y la fecha de fin del evento es "2024-12-01"
        Cuando la institución pública publique el evento
        Entonces se notificará a los ciudadanos de la zona sobre el evento
    Escenario: Publicar un anuncio importante vinculado a un evento
      Dado que la institución pública ha publicado un evento previamente
        Y la institución pública desea publicar un anuncio importante vinculado al evento
        Y la descripción del anuncio es "Se realizará una rifa de premios en la feria de emprendedores" en máximo 30 palabras
        Cuando la institución pública publique el anuncio
        Entonces se notificará a los ciudadanos de la zona sobre el anuncio vinculado al evento

