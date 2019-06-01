Comptoir du Hardware - Benchmark calcul scientifique NAS 3.4
============================================================

Benchmark de compilation utilisé pour les tests CPU du [Comptoir du Hardware](http://www.comptoir-hardware.com/). Clone, compile et exécute une partie des [NAS Parallel Benchmarks 3.4](https://www.nas.nasa.gov/).

## Utilisation
`./bench.sh`

## Sortie
Lire les lignes produites par la commande de format :
	real    XmXXXXXXs
	user    XmXXXXXXs
	sys     XmXXXXXXs

## Note
- La sortie est en temps real/user/sys, avec :
	- real : temps de bench.
	- user : somme sur tous les threads des temps passé dans le bench en mode utilisateur.
	- sys : somme sur tous les threads du temps passé dans le bench en mode noyau (pour les appels systèmes).

Copyright © 2000 Nicolas Derumigny <nd@comptoir-hardware.com>.
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
