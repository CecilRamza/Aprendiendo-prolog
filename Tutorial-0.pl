 /*
 
 Creado por: Manuel Ortiz Osio - 10/11/2020
 Editado por última vez: Manuel Ortiz Osio - 10/11/2020
 
 ------------------------------------------------------------------------------
 Hola, qué tal!
 
 Como lo mencioné en el README, éstos "apuntes" están basados en mis clases de
 programación avanzada e inteligencia artificial, impartidas en el PCIC.
 
 No voy a entrar mucho en detalles históricos sobre el desarrollo de éste 
 lenguaje. Por ahora basta con mencionar que es un lenguaje diferente a los 
 tradicionales en el que la lógica es la base. Con prolog es posible resolver
 algunos problemas de forma más fácil y eficiente que con otros lenguajes.
 
 Existen varias distribuciones de prolog, cada una agrega funciones u operadores
 para realizar de manera más simple alguna tarea, además de otras cuestiones de 
 licencia.
 
 En mis clases usamos la distribución SWI-Prolog, por lo que lo usaré para éstas 
 notas. Su página oficial es: https://www.swi-prolog.org/ donde podrán descargar
 la versión más reciente. Yo uso archlinux, así que especialmente agrego la forma
 para instalarlo desde esa distribución:
 
 Necesitan habilitar el repositorio AUR, yo uso como "helper" yay
 
 yay -Syu swi-prolog-git
 
 Para Windows tendrán una GUI donde podrán realizar gráficamente las consultas, 
 desde terminal deberán usar el comando:
 
 swipl
 
 Lo que ven es el llamado "listener" desde esa interfaz le harán las "preguntas"
 a prolog y éste las responderá de acuerdo a una *base lógica*. Esa base lógica 
 es justo su programa. Hablemos un poco de los elementos del lenguaje:
 
 ------------------------------------------------------------------------------
 */
 
 % constantes: denotan objetos. Se escriben en minúsculas ***También se llaman átomos
 
 sillon.
 hormiga.
 monstruo.
 
 /* Para consultar nuestra primer base lógica haremos lo siguiente:
 
 consult('Archivo.pl').
 
 (No olviden el punto al final de cada instrucción, sirve para decirle a prolog que
 no "concatenarán" más "instrucciones").
 
 dentro de la misma sesión bastará con usar:
 
 make.
 
 Si usan la GUI, en el menú encontrarán la opción de "consult".
 
 Si dentro del listener preguntan por los átmos anteriores:
 
 hormiga.
 
 obtendrán a la salida:
 
 true.
 
 ya que el elemento existe. */
 
 /*Variables: representan cualquier objeto, comienzan con mayúscula
 
 X, Y, Z, U, V, W, Amigo, Vive*/
 
 %Funciones: agrupan átomos y variables, se escriben en minúscula:
 
 persona(socrates).
 
 /*Es importante señalar que el usuario es el responsable de interpretar
 la salida, por ejemplo lo anterior puede ser interpretado como:
 socrates es una persona.*/
 
 %Predicado: es la parte fundamental de la programación lógica. agrupa términos.
 
 saludo :- write('Hola mundo! :)').
 
 /*Si escribimos en el listener (recuerden siempre realizar un "make." para aplicar 
 los cambios de su base lógica, que deben guardar antes de consultar):
 
 saludo.
 
 (recuerden el punto después de cada consulta)
 
 Recibiremos el saludo de vuelta ;)*/
 
 /*Por último hagamos un predicado más complejo:
 
 ¿todas las personas son mortales?*/
 
 mortal(X) :- persona(X).
 
 /* El símbolo :- puede leerse como un "implica".
 
 ¿socrates es mortal?
 
 Preguntemos al lisrtener:
 
 mortal(socrates).
 
 y obtenemos
 
 true.
 
 Para detener el listener escribimos:
 
 halt.
 
 */
