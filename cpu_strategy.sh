STRATEGY=$1

NB_CPU=$(cpufreq-info  | grep "analyse du CPU" | wc -l)

if ! test "$STRATEGY"; then
   echo 
   echo "=== Stratégie actuelle ==="
   echo

   for (( i=0; i<$NB_CPU; i++ ))
   do
      echo -n "CPU $i : "
      cpufreq-info -c $i -p
   done
   
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

for (( i=0; i<$NB_CPU; i++ ))
do
   sudo cpufreq-set -c $i -g $STRATEGY
   echo -n "CPU $i : "
   cpufreq-info -c $i -p
done
