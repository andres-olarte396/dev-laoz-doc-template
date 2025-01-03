#!/bin/bash

# Definir la estructura de directorios y archivos
declare -A estructura=(
    ["docs/01-introduccion/01-proposito.md"]="Plantilla para el propósito del sistema"
    ["docs/01-introduccion/02-alcance.md"]="Plantilla para el alcance del sistema"
    ["docs/01-introduccion/03-definiciones.md"]="Plantilla para las definiciones clave del sistema"
    ["docs/01-introduccion/04-referencias.md"]="Plantilla para las referencias externas"
    ["docs/03-backlog-producto/01-item-backlog.md"]="Plantilla para los ítems del backlog"
    ["docs/03-backlog-producto/02-priorizacion.md"]="Plantilla para la priorización de los ítems"
    ["docs/04-sprint-planning/01-sprint-1.md"]="Plantilla para la planificación del sprint 1"
    ["docs/04-sprint-planning/02-sprint-2.md"]="Plantilla para la planificación del sprint 2"
    ["docs/04-sprint-planning/03-sprint-3.md"]="Plantilla para la planificación del sprint 3"
    ["docs/07-diseno-solucion/01-arquitectura.md"]="Plantilla para la descripción de la arquitectura del sistema"
    ["docs/07-diseno-solucion/02-modelo-datos.md"]="Plantilla para el modelo de datos"
    ["docs/07-diseno-solucion/03-componentes.md"]="Plantilla para la descripción de los componentes"
    ["docs/07-diseno-solucion/04-interfaces-usuario.md"]="Plantilla para las interfaces de usuario"
    ["docs/07-diseno-solucion/05-integraciones.md"]="Plantilla para las integraciones del sistema"
    ["docs/07-diseno-solucion/06-diseno-de-marca.md"]="Plantilla de Diseño de Marca del Sistema"
    ["docs/09-validacion/01-criterios-aceptacion.md"]="Plantilla para los criterios de aceptación"
    ["docs/09-validacion/02-plan-pruebas-inicial.md"]="Plantilla para el plan de pruebas inicial"
)

# Crear directorios y archivos con sus plantillas
for archivo in "${!estructura[@]}"; do
    directorio=$(dirname "$archivo")
    # Crear el directorio si no existe
    if [ ! -d "$directorio" ]; then
        mkdir -p "$directorio"
    fi

    # Crear el archivo y escribir la plantilla básica
    echo "# ${estructura[$archivo]}" > "$archivo"
    echo "" >> "$archivo"
    echo "<!-- Aquí puedes agregar los detalles específicos para este archivo. -->" >> "$archivo"
done

echo "Documentación generada con éxito."
