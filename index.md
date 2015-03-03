---
title: "Base de datos"
author: "Ignacio Suárez Andrés"
date: "4/3/2015"
---

# Base de datos de Pokémon

## Creación de la página

### Commit inicial
Se creó repositorio, con archivos index.html y README.md

### Cambio de hmtl a md
Se cambia index.html a index.md, comprobando que aparece el texto en la página.

### Comprobando que se ve estilo Markdown
Se sube al repositorio remoto el contenido anterior de este archivo, comprobándose que se muestran correctamente funciones de Markdown como los títulos.


## Creación de la base de datos

### DB y primeras tablas
Se crea una base de datos y se le añaden las primeras tablas: pokemon, type, egggroup, abilities.

### Primeras tablas de relaciones N->N
Se crean las tablas poke-type, poke-egg y poke-ability, que establecen relaciones entre pokemon y type, egggroup, abilities. Se añade también un nivel a los títulos de secciones en este documento.

### Primeros datos: tipos y 3 pokemon
Se rellena la tabla type y se introducen los primeros datos en la tabla pokemon.

### Primeras relaciones pokemon-tipo
Se añaden los valores correspondientes a los primeros 3 Pokémon utilizados en la tabla poke-type. Se introduce además en la tabla pokemon el atributo dualtype con ALTER TABLE, incluyendo sus valores con UPDATE.

### Cambiado archivo pokemondb a pokemondb.sql
Corrección de fallo original que no impedía hacer la tabla, pero conveniente para editar fuera de MySQL Workbench y poder ver resaltado.


