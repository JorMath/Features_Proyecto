from datetime import datetime, time


class Espacio_Publico:
    def __init__(self, nombre):
        self.nombre = nombre
        self.actividades = []

    def agregar_actividad(self, actividad):
        self.actividades.append(actividad)

    def existe_actividad(self, actividad):
        return actividad in self.actividades

    def obtener_tiempos_disponibles(self):
        # Suponiendo que siempre hay un espacio disponible
        return ["10:00-12:00", "14:00-16:00"]

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
        return len(self.espacios_publicos) > 0


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
