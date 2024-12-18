from datetime import datetime, time, timedelta


class Espacio_Publico:
    def __init__(self, nombre):
        self.nombre = nombre
        self.actividades = []

    def agregar_actividad(self, actividad):
        self.actividades.append(actividad)

    def existe_actividad(self, actividad):
        return actividad in self.actividades

    def mostrar_horarios_detallados(self):
        # Configuración del rango del día
        horario_inicio = time(8, 0)  # 08:00 AM
        horario_fin = time(20, 0)  # 08:00 PM
        intervalo = timedelta(minutes=30)

        # Generar intervalos de tiempo
        horarios = []
        actual = datetime.combine(datetime.today(), horario_inicio)
        fin_dia = datetime.combine(datetime.today(), horario_fin)

        while actual < fin_dia:
            siguiente = actual + intervalo
            horarios.append((actual.time(), siguiente.time()))
            actual = siguiente

        # Verificar actividades para cada intervalo
        resultado = []
        for inicio, fin in horarios:
            actividad_asignada = None
            for actividad in self.actividades:
                if (
                        inicio >= actividad.hora_inicio
                        and fin <= actividad.hora_fin
                ):
                    actividad_asignada = actividad.nombre
                    break

            if actividad_asignada:
                resultado.append(f"{inicio.strftime('%H:%M')}-{fin.strftime('%H:%M')} {actividad_asignada}")
            else:
                resultado.append(f"{inicio.strftime('%H:%M')}-{fin.strftime('%H:%M')} Libre")

        return resultado

    def ocupar_espacio(self, actividad):
        self.actividades.append(actividad)

    def existe_actividad_en_tiempo(self, rango_tiempo):
        for actividad in self.actividades:
            if actividad.obtener_tiempo() == rango_tiempo:
                return True
        return False


class Ciudad:
    def __init__(self, nombre):
        self.nombre = nombre
        self.espacios_publicos = []

    def agregar_espacio_publico(self, espacio):
        self.espacios_publicos.append(espacio)

    def existe_espacio_publico_disponible(self):
        for espacio in self.espacios_publicos:
            if len(espacio.mostrar_horarios_detallados()) > 0:  # Verificar horarios disponibles
                for horario in espacio.mostrar_horarios_detallados():
                    if "Libre" in horario:
                        print(f"Espacio público disponible: {espacio.nombre}")
                        return True
        return False


class Actividad:
    def __init__(self, nombre, espacio, fecha_inicio, fecha_fin, hora_inicio, hora_fin):
        self.nombre = nombre
        self.espacio = espacio
        self.fecha_inicio = datetime.strptime(fecha_inicio, "%Y-%m-%d").date()
        self.fecha_fin = datetime.strptime(fecha_fin, "%Y-%m-%d").date()
        self.hora_inicio = time.fromisoformat(hora_inicio)
        self.hora_fin = time.fromisoformat(hora_fin)

    def obtener_tiempo(self):
        return {
            "fecha_inicio": self.fecha_inicio,
            "fecha_fin": self.fecha_fin,
            "hora_inicio": self.hora_inicio,
            "hora_fin": self.hora_fin,
        }


class Agenda:
    def __init__(self):
        self.actividades = []

    def agregar_actividad(self, actividad):
        self.actividades.append(actividad)

    def obtener_actividades(self):
        return self.actividades
