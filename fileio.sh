for i in {1..5};
do
sysbench --num-threads=16 --test=fileio --file-total-size=8G --file-num=128 --file-test-mode=rndrw prepare

sysbench --num-threads=16 --test=fileio --file-total-size=8G --file-num=128 --file-test-mode=rndrw run

sysbench --num-threads=16 --test=fileio --file-total-size=8G --file-num=128 --file-test-mode=rndrw cleanup;
done