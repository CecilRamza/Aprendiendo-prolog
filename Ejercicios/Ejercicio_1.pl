%Sea la siguiente base lógica (Extraida de: Cien años de Soledad, por Gabriel García Márquez):

hombre('Nicanor Ulloa').
hombre('José Arcadio Buendía').
hombre('José Arcadio I').
hombre('Aurelianos').
hombre('Arcadio').
hombre('Aureliano José').
hombre('Fernando del Carpio').
hombre('José Arcadio Segundo').
hombre('Aureliano Segundo').
hombre('Gastón').
hombre('José Arcadio II').
hombre('Mauricio Babilonia').
hombre('Aureliano Babilonia').
hombre('Aureliano').

mujer('Rebeca Montiel').
mujer('Úrsula Iguarán').
mujer('Rebeca').
mujer('Pilar Ternera').
mujer('Remedios Moscote').
mujer('Amaranta').
mujer('Santa Sofía de la Piedad').
mujer('Renata Argote').
mujer('Remedios').
mujer('Petra Cotes').
mujer('Fernanda del Carpio').
mujer('Amaranta Úrsula').
mujer('Renata Remedios').

madre('Rebeca','Rebeca Montiel').
madre('José Arcadio','Úrsula Iguarán').
madre('Aurelianos','Úrsula Iguarán').
madre('Amaranta','Úrsula Iguarán').
madre('Arcadio','Pilar Ternera').
madre('Aureliano José','Pilar Ternera').
madre('Fernanda del Carpio','Renata Argote').
madre('Remedios','Santa Sofía de la Piedad').
madre('José Arcadio Segundo','Santa Sofía de la Piedad').
madre('Aureliano Segundo','Santa Sofía de la Piedad').
madre('Amaranta Úrsula','Fernanda del Carpio').
madre('José Arcadio II','Fernanda del Carpio').
madre('Renata Remedios','Fernanda del Carpio').
madre('Aureliano Babilonia','Renata Remedios').
madre('Aureliano','Amaranta Úrsula').

padre('Rebeca','Nicanor Ulloa').
padre('José Arcadio','José Arcadio Buendía').
padre('Aurelianos','José Arcadio Buendía').
padre('Amaranta','José Arcadio Buendía').
padre('Arcadio','José Arcadio').
padre('Aureliano José','Aurelianos').
padre('Remedios','Arcadio').
padre('José Arcadio Segundo','Arcadio').
padre('Aureliano Segundo','Arcadio').
padre('Fernanda del Carpio','Fernando del Carpio').
padre('Amaranta Úrsula','Aureliano Segundo').
padre('José Arcadio II','Aureliano Segundo').
padre('Renata Remedios','Aureliano Segundo').
padre('Aureliano Babilonia','Mauricio Babilonia').
padre('Aureliano','Aureliano Babilonia').

/* Donde madre(X,Y): Y es la madre de X.
         padre(X,Y): Y es el padre de X.

   Realiza los siguientes predicados:
   
   abuelo(X,Y).
   abuela(X,Y).
   nieto(X,Y).
   nieta(X,Y).
   hermano(X,Y).
   hermana(X,Y).
   tia(X,Y).
   tio(X,Y).
   primo(X,Y).
   prima(X,Y).
   pareja(X,Y). (Comparten al menos un hijo en común).
   not(hijos). (No tuvieron ningún hijo).*/
   
