# EXERCICI 1:
"Doneu una sentència SQL per obtenir els números i els noms dels departament situats a MADRID, que tenen empleats que guanyen més de 200000.
Pel joc de proves que trobareu al fitxer adjunt, la sortida ha de ser:

NUM_DPT		NOM_DPT
5		    VENDES"

SELECT DISTINCT NUM_DPT, NOM_DPT
FROM DEPARTAMENTS D NATURAL INNER JOIN EMPLEATS E
WHERE D.CIUTAT_DPT = 'MADRID' AND E.SOU > 200000

# EXERCICI 2:
"Doneu una sentència SQL per obtenir el nom del departament on treballa i el nom del projecte on està assignat l'empleat número 2
Pel joc de proves que trobareu al fitxer adjunt, la sortida seria:

Nom_dpt		Nom_proj
MARKETING   IBDVID"

SELECT NOM_DPT, NOM_PROJ
FROM DEPARTAMENTS D NATURAL INNER JOIN PROJECTES J NATURAL INNER JOIN EMPLEATS E
WHERE NUM_EMPL = 2

# EXERCICI 3:
"Obtenir per cada departament situat a MADRID la mitjana dels sous dels seus empleats. Concretament, cal donar el número de departament, 
el nom de departament i la mitjana del sou. Pel joc de proves que trobareu al fitxer adjunt, la sortida ha de ser:

NUM_DPT		NOM_DPT		SOU
5		    VENDES		250000"

SELECT NUM_DPT, NOM_DPT, AVG(SOU)
FROM DEPARTAMENTS D NATURAL INNER JOIN EMPLEATS E
WHERE D.CIUTAT_DPT = 'MADRID'
GROUP BY NUM_DPT, NOM_DPT



