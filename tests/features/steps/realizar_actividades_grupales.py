from behave import *
from modelos.modelo import Ciudad, Espacio_Publico, Actividad, Agenda

step('que existe por lo menos un "<espacio_público>" en la ciudad')
def step_impl(context, espacio_público):
    context.ciudad = Ciudad("Quito")
    context.espacio_publico1 = Espacio_Publico(espacio_público)
    context.ciudad.agregar_espacio_publico(context.espacio_publico1)
    assert context.ciudad.existe_espacio_publico_disponible()

@step('el espacio público tiene disponibilidad en algún tiempo')
def step_impl(context):
    assert context.espacio_publico1.mostrar_horarios_detallados()

# @step("el ciudadano inicie una actividad en el espacio público A en un rango de tiempo determinado")
# def step_impl(context):
#     context.actividad = Actividad("Fútbol", "Parque La Carolina", "2024-12-10", "2024-12-10", "10:00", "12:00")
#     context.espacio_publico1.agregar_actividad(context.actividad)
#     assert context.espacio_publico1.existe_actividad(context.actividad)


@step("el espacio público será ocupado para realizar esa actividad en el tiempo elegida")
def step_impl(context):
    context.espacio_publico1.ocupar_espacio(context.actividad)
    assert context.espacio_publico1.existe_actividad_en_tiempo(context.actividad.obtener_tiempo())



@step("se publicará la actividad en la agenda de actividades públicas")
def step_impl(context):
    context.agenda = Agenda()
    context.agenda.agregar_actividad(context.actividad)
    assert context.actividad in context.agenda.obtener_actividades()
#
# @step('que existe por lo menos un "(.+)" en la ciudad')
# def step_impl(context, arg0):
#     """
#     :type context: behave.runner.Context
#     :type arg0: str
#     """
#     raise NotImplementedError(u'STEP: Dado que existe por lo menos un "<espacio_público>" en la ciudad')
#
#
# @step('el espacio público tiene disponibilidad en algún "(?P<tiempo_disponible>.+)"')
# def step_impl(context, tiempo_disponible):
#     """
#     :type context: behave.runner.Context
#     :type tiempo_disponible: str
#     """
#     raise NotImplementedError(u'STEP: Y el espacio público tiene disponibilidad en algún "<tiempo_disponible>"')
#
#
# @step(
#     'el ciudadano inicie una actividad privada en el espacio publico "(?P<espacio_eligido>.+)" en un rango de tiempo determinado')
# def step_impl(context, espacio_eligido):
#     """
#     :type context: behave.runner.Context
#     :type espacio_eligido: str
#     """
#     raise NotImplementedError(
#         u'STEP: Cuando el ciudadano inicie una actividad privada en el espacio publico "<espacio_eligido>" en un rango de tiempo determinado')
@step('que existe por lo menos un "{}" en la ciudad')
def step_impl(context, arg0):
    context.ciudad = Ciudad("Quito")
    context.espacio_publico1 = Espacio_Publico(arg0)
    context.ciudad.agregar_espacio_publico(context.espacio_publico1)
    assert context.ciudad.existe_espacio_publico_disponible()


@step("el espacio público será ocupado para realizar esa actividad en el tiempo elegido")
def step_impl(context):
    context.espacio_publico1.ocupar_espacio(context.actividad)
    assert context.espacio_publico1.existe_actividad_en_tiempo(context.actividad.obtener_tiempo())


@step(
    'el ciudadano inicie una actividad en el espacio público A en un rango de tiempo determinado "{tiempo_disponible}"')
def step_impl(context, tiempo_disponible):
    context.actividad = Actividad("Fútbol", "Parque La Carolina", "2024-12-10", "2024-12-10", "10:00", "12:00")
    context.espacio_publico1.agregar_actividad(context.actividad)
    assert context.espacio_publico1.existe_actividad(context.actividad)