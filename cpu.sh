for i in {1..5};
do
sysbench --test=cpu --cpu-max-prime=30000 run;
done