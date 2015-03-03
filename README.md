## Creación de la página

#### Commit inicial
Se creó repositorio, con archivos index.html y README.md

#### Cambio de hmtl a md
Se cambia index.html a index.md, comprobando que aparece el texto en la página.

#### Comprobando que se ve estilo Markdown
Se sube al repositorio remoto el contenido anterior de este archivo, comprobándose que se muestran correctamente funciones de Markdown como los títulos.


## Creación de la base de datos

#### DB y primeras tablas
Se crea una base de datos y se le añaden las primeras tablas: *pokemon*, *type*, *egggroup*, *abilities*.

#### Primeras tablas de relaciones N->N
Se crean las tablas *poke-type*, *poke-egg* y *poke-ability*, que establecen relaciones entre *pokemon* y *type*, *egggroup* y *abilities*. Se añade también un nivel a los títulos de secciones en este documento.

#### Primeros datos: tipos y 3 Pokémon
Se rellena la tabla *type* y se introducen los primeros datos en la tabla *pokemon*.

#### Primeras relaciones Pokémon-tipo
Se añaden los valores correspondientes a los primeros 3 Pokémon utilizados en la tabla *poke-type*. Se introduce además en la tabla *pokemon* el atributo dualtype con ALTER TABLE, incluyendo sus valores con UPDATE.

#### Cambiado archivo pokemondb a pokemondb.sql
Corrección de fallo original que no impedía hacer la tabla, pero conveniente para editar fuera de MySQL Workbench y poder ver resaltado.

#### Nuevos Pokémon para cubrir todos los tipos
Se han añadido a las tablas *pokemon* y *poke-type* datos de Pokémon que permiten tener al menos un ejemplo de cada tipo.

#### Tabla de grupos huevo llena
Rellenada tabla *egggroup* con la lista de todos los grupos huevo existentes.

#### Tabla de habilidades rellenada
Rellenada tabla *abilities* con las habilidades de los Pokémon ya introducidos en esta DB.

___

#### index.md transferido a README.md
La página en Github estaba creada como de usuario. Se pasa a una de proyecto, que al crearse permite cargar el contenido del README.md. Por tanto, el contenido del index.md que mostraba un simple texto en Markdown en la página anterior se traslada aquí.

#### README.md adaptado a pagina
Se han realizado cambios estéticos en README.md en preparación para mostrarlo en la página, como reajustar los niveles de títulos o poner en cursiva nombres de tablas.

___

#### Relaciones Pokémon-grupohuevo
Añadidas relaciones entre Pokémon y los grupos huevo a los que pertenecen en la tabla *poke-egg*.

#### Relaciones Pokémon-habilidades
Añadidas relaciones entre Pokémon y las habilidades que tienen. Corregido ID de la habilidad Sniper, de 92 a 97.
