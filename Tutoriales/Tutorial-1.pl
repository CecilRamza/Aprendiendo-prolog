 /*
 
 Creado por: Manuel Ortiz Osio - 10/11/2020
 Editado por última vez: Manuel Ortiz Osio - 10/11/2020
 
 ------------------------------------------------------------------------------
 */
 
 %Practiquemos los predicados a partir de la siguiente base lógica:
 
 robot(megaman).
 robot(cutman).
 robot(gutsman).
 robot(iceman).
 robot(bombman).
 robot(fireman).
 robot(elecman).
 robot(roll).
 robot(rush).
 humano(light).
 humano(wily).
 
 /*Cuya interpretación es intuitiva para nosotros. Deben tener cuidado con el 
 órden, ya que si intercalan robot con humano tendrán un error. Si fuera 
 necesario intercalar deberán agregar otras instrucciones. Ahora:*/
 
 control(light,megaman).
 control(light,roll).
 control(light,rush).
 control(wily,cutman).
 control(wily,gutsman).
 control(wily,iceman).
 control(wily,bombman).
 control(wily,fireman).
 control(wily,elecman).
 
 /*Que lo interpretamos como: control(X,Y). X tiene control sobre Y. Recuerden
 que la interpretación (podríamos decirle convención) la damos nosotros, no el
 programa ni la computadora. Sabemos que los robots aliados son los controlados 
 por light, entonces:*/
 
 aliado(X) :-
    control(light,X).

 /*Con esto decimos que un aliado es cualquier átomo controlado por light. En el 
 listener podemos realizar la consulta:
 
 aliado(Y).
 
 noten que la variable a consultar puede ser diferente a la de la base lógica. 
 A la salida tendremos:
 
 Y = megaman
 
 si damos "enter" terminará la búsqueda... pero sabemos que faltan más! entonces
 en lugar de "enter" vamos a presionar la tecla "n":
 
 aliado(Z).
 
 ?- aliado(Y).
 Y = megaman ;
 Y = roll ;
 Y = rush.

 Ahora podemos hacer lo siguiente:*/
 
 enemigo(X) :-
    control(wily,X).

 /*Noten que podemos reutilizar variables de otros predicados Ahora digamos:.*/
 
 ataque(megaman).
 ataque(cutman).
 ataque(gutsman).
 ataque(iceman).
 ataque(bombman).
 ataque(fireman).
 ataque(elecman).
 apoyo(roll).
 apoyo(rush).

 /*Sabemos que el héroe es un robot de ataque controlado por light. Necesitamos de
 un "AND" para crear el predicado de héroe, para ello usaremos la coma ",".
 También podemos llamar como héroe aquel que controla a los aliados. Ahora 
 necesitamos de un "OR", para ello usaremos el punto y coma ";":*/
 
 heroe(X) :-
    robot(X),
    ataque(X),
    control(light,X);
    aliado(Y),
    control(X,Y).
    
 /*Cuando hacen la consulta notarán que sale light repetido con la existencia de cada 
 aliado. Para detener el "backtracking" usamos el operador "break" (!), como se muestra
 a continuación:*/
 
 villano(X) :-
    robot(X),
    ataque(X),
    control(wily,X);
    enemigo(Y),
    control(X,Y),
    !.
 
