# Sistema de recomendación de productos farmacéuticos

Proyecto de **Estadística Industrial** que analiza registros de compras de productos farmacéuticos de Procaps mediante **R**. A partir de los patrones de compra, calcula similitudes entre productos y presenta recomendaciones en una aplicación web.

## Qué hace

- Limpia y organiza los datos de productos, facturas y compradores.
- Construye una matriz de compras **comprador–producto**.
- Calcula la **similitud de coseno** entre productos.
- Genera recomendaciones mediante filtrado colaborativo **ítem–ítem** y **usuario–usuario**.
- Permite buscar productos y consultar recomendaciones en una interfaz **HTML**.

## Estructura del repositorio

```text
Sistema-de-recomendacion/
├── IMÁGENES Y PROMPTS/                 # Evidencias del proceso
├── Sistema de recomendación.Rmd        # Código y análisis en R Markdown
├── Sistema-de-recomendacion.html       # Informe del análisis
├── depuración de datos.R              # Limpieza de datos
├── Libros.csv                          # Datos del ejercicio inicial
├── Calificaciones.csv                  # Calificaciones de libros
├── Usuarios.csv                        # Usuarios del ejercicio inicial
├── pro2.csv                            # Registros de productos
├── catálogo_productos.csv              # Catálogo farmacéutico
├── historial_compradores.csv           # Historial de compras
├── recomendaciones_item.json           # Recomendaciones por producto
├── Procaps_Explora.html                # Aplicación web
├── Bitácora de IA sistema de recomendación.html
└── archivo csv/                        # Otros datos del proyecto
```

## Requisitos

- **R** y **RStudio**.
- Paquetes: `dplyr`, `tidyr`, `ggplot2`, `cluster`, `lsa`, `readr`, `jsonlite` y `rmarkdown`.
- Navegador web para abrir la aplicación.

## Cómo usarlo

1. Descarga el repositorio desde **Code → Download ZIP**.
2. Abre `Sistema de recomendación.Rmd` en **RStudio**.
3. Verifica las rutas de los CSV, instala los paquetes necesarios y ejecuta **Knit** para generar el informe.
4. Abre `Procaps_Explora.html` en tu navegador para explorar los productos y sus recomendaciones.

## Datos y resultados

Los archivos CSV contienen los datos de entrada y el historial procesado. `recomendaciones_item.json` guarda las similitudes y recomendaciones; `Sistema-de-recomendacion.html` muestra el análisis, y `Procaps_Explora.html` presenta el prototipo web.

## Aviso

Proyecto con fines **académicos**. Las recomendaciones se basan en patrones estadísticos de compra; **no son indicaciones médicas ni sustituyen el criterio de un profesional de salud**.
