#Base de datos de Pokémon
#Sistemas de Gestión de Datos Científicos

##Lista de commits
Commits de más reciente a más antiguo, por etapas.

### Informe

###### Reorganizado README.md
Lista de commits reordenada de más reciente a más antiguo, añadida cabecera.

###### Hecho informe
Informe (tex y pdf) con imágenes incluido, de golpe por ser corto (el texto ocupa realmente 1 página) y no haberse necesitado revisiones. Las imágenes, incluidas en el informe, muestran diagrama EER de la base de datos y dos consultas de ejemplo.


### Creación de la base de datos

###### Funciones base stat total y average stat
Añadidas funciones que calculan el base stat total (HP+attack+defense+spattack+spdefense+speed) y la media de los stats.

###### Constraint unique a nombres
Añadida constraint UNIQUE a todos los nombres que aparecen en las tablas (Pokémon, tipo, grupo huevo, habilidad, movimiento, categoría).

###### Primeros datos de moves y learnsets
Añadidos a *moves* los movimientos que Omastar (139) aprende por nivel, salvo los de Status para simplificar. Relacionados a través de *learnsets*, así como los movimientos del anterior conjunto que aprende también Blastoise.

###### Creada tabla categorias
Creada tabla *categories*, que contiene los valores 'Physical', 'Special' y 'Status'. Corregida tabla *moves* para indicar tipo y categoría, que aparecen como Foreign Key.

###### Creadas tablas moves y learnsets
Creada tabla *moves* que recogerá los movimientos existentes y *learnsets* que relaciona *moves* con *pokemon*, indicando además a qué nivel cada Pokémon aprende cada ataque.

###### Relaciones Pokémon-habilidades
Añadidas relaciones entre Pokémon y las habilidades que tienen. Corregido ID de la habilidad Sniper, de 92 a 97.

###### Relaciones Pokémon-grupohuevo
Añadidas relaciones entre Pokémon y los grupos huevo a los que pertenecen en la tabla *poke-egg*.

___

###### README.md adaptado a pagina
Se han realizado cambios estéticos en README.md en preparación para mostrarlo en la página, como reajustar los niveles de títulos o poner en cursiva nombres de tablas.

###### index.md transferido a README.md
La página en Github estaba creada como de usuario. Se pasa a una de proyecto, que al crearse permite cargar el contenido del README.md. Por tanto, el contenido del index.md que mostraba un simple texto en Markdown en la página anterior se traslada aquí.

___

###### Tabla de habilidades rellenada
Rellenada tabla *abilities* con las habilidades de los Pokémon ya introducidos en esta DB.

###### Tabla de grupos huevo llena
Rellenada tabla *egggroup* con la lista de todos los grupos huevo existentes.

###### Nuevos Pokémon para cubrir todos los tipos
Se han añadido a las tablas *pokemon* y *poke-type* datos de Pokémon que permiten tener al menos un ejemplo de cada tipo.

###### Cambiado archivo pokemondb a pokemondb.sql
Corrección de fallo original que no impedía hacer la tabla, pero conveniente para editar fuera de MySQL Workbench y poder ver resaltado.

###### Primeras relaciones Pokémon-tipo
Se añaden los valores correspondientes a los primeros 3 Pokémon utilizados en la tabla *poke-type*. Se introduce además en la tabla *pokemon* el atributo dualtype con ALTER TABLE, incluyendo sus valores con UPDATE.

###### Primeros datos: tipos y 3 Pokémon
Se rellena la tabla *type* y se introducen los primeros datos en la tabla *pokemon*.

###### Primeras tablas de relaciones N->N
Se crean las tablas *poke-type*, *poke-egg* y *poke-ability*, que establecen relaciones entre *pokemon* y *type*, *egggroup* y *abilities*. Se añade también un nivel a los títulos de secciones en este documento.

###### DB y primeras tablas
Se crea una base de datos y se le añaden las primeras tablas: *pokemon*, *type*, *egggroup*, *abilities*.


### Creación de la página

###### Comprobando que se ve estilo Markdown
Se sube al repositorio remoto el contenido anterior de este archivo, comprobándose que se muestran correctamente funciones de Markdown como los títulos.

###### Cambio de hmtl a md
Se cambia index.html a index.md, comprobando que aparece el texto en la página.

###### Commit inicial
Se creó repositorio, con archivos index.html y README.md
