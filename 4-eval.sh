# a batch script to run eval2.py  
#!/bin/bash


for it in 2000 4000 6000 8000
do
    echo $it
    python eval2.py  --predictions output/dev.distilbert-results.checkpoint-$it.csv --groundtruth dev.label.txt
done

exec /bin/bash