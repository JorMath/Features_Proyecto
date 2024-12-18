from behave import *

use_step_matcher("re")


@step('que existe un espacio público disponible en la ciudad')
def step_impl(context):
    context.ciudad = Ciudad("Quito")
    context.espacio_publico1 = Espacio_Publico("Parque La Carolina", True)
    context.espacio_publico2 = Espacio_Publico("Parque Metropolitano", False)
    context.espacio_publico3 = Espacio_Publico("Parque Bicentenario", False)
    context.ciudad.agregar_espacio_publico(context.espacio_publico1)
    context.ciudad.agregar_espacio_publico(context.espacio_publico2)
    context.ciudad.agregar_espacio_publico(context.espacio_publico3)
    assert context.ciudad.existe_espacio_publico_disponible()

@step('el aforo máximo de este espacio público es "<aforo>" personas')
def step_impl(context, aforo):
    try:
        context.espacio_publico1.set_aforo_maximo(aforo)
    except ValueError as e:
        assert False, f"{e}"




@step('existe una fecha disponible del día "<dia>" para esa actividad')
def step_impl(context, dia):
    context.espacio_publico1.obtener_dia_disponible()
    evento1 = Evento()
    evento2 = Evento()
    evento3 = Evento()
    evento1.set_fecha("2024-12-10")
    evento2.set_fecha("2024-12-11")
    evento3.set_fecha("2024-12-12")
    calendario_eventos = Calendario()
    calendario_eventos.agregar_evento(evento1)
    calendario_eventos.agregar_evento(evento2)
    calendario_eventos.agregar_evento(evento3)


@step('existe una hora disponible "<hora>" para esa actividad en ese día')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y existe una hora disponible "<hora>" para esa actividad en ese día')


@step('un ciudadano inicie una actividad en el espacio público "<espacio>"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Cuando un ciudadano inicie una actividad en el espacio público "<espacio>"')


@step('se elija la fecha "<día>" y la hora "<hora>" para la actividad')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y se elija la fecha "<día>" y la hora "<hora>" para la actividad')


@step('el espacio público será ocupado para realizar esa actividad en el día "<día>" a las "<hora>"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(
        u'STEP: Entonces el espacio público será ocupado para realizar esa actividad en el día "<día>" a las "<hora>"')


@step("se publicará la actividad en la agenda de actividades públicas")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y se publicará la actividad en la agenda de actividades públicas')


@step('se tiene una lista de asistentes "<asistentes>" a la actividad')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y se tiene una lista de asistentes "<asistentes>" a la actividad')


@step('se notificará la actividad a los asistentes "<asistentes>"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y se notificará la actividad a los asistentes "<asistentes>"')