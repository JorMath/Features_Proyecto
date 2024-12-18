from behave import *

use_step_matcher("re")


@step('que existe un espacio público disponible "<espacio>" para reservar')
def step_impl(context, espacio):

   assert existe_espacio_disponible(espacio)


@step('el aforo máximo de este espacio público es "<aforo>" personas')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y el aforo máximo de este espacio público es "<aforo>" personas')


@step('existe una fecha disponible del día "<día>" para esa actividad')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Y existe una fecha disponible del día "<día>" para esa actividad')


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