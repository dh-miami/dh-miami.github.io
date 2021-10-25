---
layout: page
title: Tarea 6 - El texto de las memorias de Leonor 
---

La tarea 6 consiste en la transformación final del texto de Leonor y su subida a la sección de Ejercicio de vuestro portfolio. 

Hasta ahora hemos estado trabajando con los materiales del repositorio conjunto en https://github.com/dh-miami/dh-miami.github.io/ y codificando el texto de Leonor en la carpeta https://github.com/dh-miami/dh-miami.github.io/tree/main/Leonor . Ahora, debes subir la versión final del texto en vuestro portfolio, para ello seguiremos estos pasos: 

- Descarga la carpeta con los documentos XML-TEI y XSLT: https://github.com/dh-miami/dh-miami.github.io/tree/main/Leonor y guárdala en tu carpeta de GitHub. Recurda en esta carpeta tenemos 3 archivos esenciales: 
    -  LLC_memorias.xml: es el archivo fuente donde hemos hecho nuestra codificación en XML-TEI. 
    -  transform.xslt: es el archivo que transforma la codificación (LLC_memorias.xml) en otro formato, en nuestro caso en un documento HTML para que se pueda ver en el navegador. Nuestro resultado es LLC_memorias.html 
    -  estilo.css: es el archivo que al hacer la transformación da una serie de estilos al HTML, por ejemplo, es el encargado de dar color a los diferentes elementos que hemos marcado. 
    -  LLC_memorias_DefaultTransformation.html: este documento fue el resultado de una primera transformación de prueba que hicimos con Oxygen utilizando un template o plantilla en XSLT por defecto. El resultado era muy simple. :) 
    -  LLC_memorias.html: este es el documento que se crea al transformar LLC_memorias.xml a través de transform.xslt y de los estilos que hay en estilo.css. 
- El siguiente paso consiste en copiar esta carpeta "Leonor" en tu GitHub. Para ello clona tu repositorio personal y asegúrate que tienes una copia de todo tu repositorio `username.github.io` en tu computadora, en local. 
- Para ver si está todo bien, puedes intentar hacer algún cambio, hacer un "commit" y un "push". 
- Ahora debes modificar algunas cuestiones en tu documento transform.xslt para personalizarlo con tu portfolio (estamos trabajando en local): 

1. Pon el título de tu portfolio: 

```
 <header class="site-header">
    <div class="wrapper">
        <a class="site-title" rel="author" href="/">Digital Humanities @ UM - SPA 410</a>
  [...]                    
</header>
```

2. Pon el link correcto que conduzca al mapa que has elaborado en tu portfolio: 

```
 <p>Consulta el <a href="https://dh-miami.github.io/ejercicios/mapa.html">mapa con el recorrido de Leonor</a></p>
 ```
