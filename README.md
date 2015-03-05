cpu strategy
------------

Script bash permettant d'administrer la stratégie d'utilisation des cpu

Installation des dépendances

> aptitude install cpufrequtils

Voir la stratégie actuelle et les stratégies disponibles

> bash cpu_strategy.sh

Changer la stratégie des cpu (change uniquement les 2 premiers cpu : à adapter pour rendre générique en fonction du nombre de cpu de l'ordi)

> bash cpu_strategy.sh performance
