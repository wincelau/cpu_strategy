STRATEGY=$1

if ! test "$STRATEGY"; then
   echo 
   echo "=== Stratégie actuelle ==="
   echo
   cpufreq-info -c 0 -p
   cpufreq-info -c 1 -p
   echo
   echo "=== Stratégies disponibles ==="
   echo 
   cpufreq-info -g
   echo
   echo "=== Pour changer la stratégie ==="
   echo
   echo "> cpu_strategy.sh nom_de_la_strategie"
   echo
   exit;
fi


sudo cpufreq-set -c 0 -g $STRATEGY
sudo cpufreq-set -c 1 -g $STRATEGY
cpufreq-info -c 0 -p
cpufreq-info -c 1 -p
