---
layout: post
title: "Dublin Core, un lenguaje de metadatos: ejemplo comentado"
date: 2021-09-20
author: Susanna Allés Torrent
---

# Dublin Core, un lenguaje de metadatos: ejemplo comentado

Descripción de qué es Dublin Core, para qué sirve, quien lo hizo, quien lo utiliza, .... 

Los ejemplos seleccionados para su codificación: [enlace a la postal](https://merrick.library.miami.edu/cdm/compoundobject/collection/chc5324/id/31/rec/19)

Los trozos de código deberán estar explicados y seguidamente reflejados: 

````
<?xml version="1.0"?>
<metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
````

El título corresponde a.. 

````
    <dc:title>El título</dc:title>
````
  
En la etiqueta "creador" se añade la información correspondiente a ...: 

 ````
    <dc:creator>
        Quien creó el recurso
    </dc:creator>
    <dc:subject>
        Palabra clave 1, Palabra clave 2, ...
    </dc:subject>
    <dc:description>
        Esta es la descripción del record...
    </dc:description>
    <dc:publisher>
        Quien lo publica
    </dc:publisher>
    <dc:contributor>
        Quienes contribuyen
    </dc:contributor>
    <dc:date>
        2021-09-22
    </dc:date>
    <dc:type>
        Imagen,...
    </dc:type>
    <dc:format>
        jpg
    </dc:format>
    <dc:identifier>
        Identificador
    </dc:identifier>
    <dc:source>
        La biblioteca
    </dc:source>
    <dc:language>
        español
    </dc:language>
    </metadata>
````

Con cada uno de los elementos se explica brevemente qué son. 

Una breve reflexión final. 
