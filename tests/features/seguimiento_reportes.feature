# Created by Jorman at 9/12/2024
# language: es
Característica: Seguimiento de reportes realizados
  Como ciudadano ecuatoriano
  quiero hacer seguimiento de los reportes realizados
  para conocer el estado de los problemas que yo he reportado
  Esquema del escenario: Visualizar seguimiento de un reporte
    Dado que el ciudadano ha reportado un problema previamente
    Cuando el ciudadano desee hacer seguimiento del reporte
    Entonces el ciudadano podrá visualizar el estado del reporte como "<estado_reporte>" así como la fecha de creación del reporte como "<fecha_creacion>"
    Ejemplos:
    Ejemplos: Seguimiento de reportes
      | estado_reporte        | fecha_creacion    |
      | En proceso            | 2024-12-01       |
      | Resuelto              | 2024-11-28       |
      | Pendiente de revisión | 2024-12-03       |
      | Escalado              | 2024-12-02       |
      | En evaluación técnica | 2024-11-30       |
