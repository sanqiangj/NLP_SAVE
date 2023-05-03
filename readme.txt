# Xiaofeng Zhang

`0-get_twitter.ipynb`

should make sure that the xxx.data.txt and the xxx.label.txt in the same directory.

This file will use the data and label to fetch twitter with Twitter API and generate a tweets.npy file

`tweets.npy` 

is a dict that save all the twitters the formation is like 

{[tweet_id]: {[text]:"text",[created_at]:"create time"},[tweet_id]:"Not found",[tweet_id]:"Not Authorized"}

`1-build_dataset.ipynb`

will use the `tweets.npy` to build a huggingface form dataset, the dataset will be saved under `./data/rumour`

`2-modoel-train.ipynb`

these kind of file will train the pretrained model and save checkpoint to `./model-results/checkpiont-xxxx`

`3-predict.ipynb`

this file will load all the checkpoint under result folder and generate a predicted `*.csv` file under `./output/dataset.model.checkpoint.csv`

`4-eval.sh`

a batch processing script to call the `eval.py` automately.

# Liuxiao Qin

`preprocessing.ipynb`

Load `tweets.npy`, choose the elements you want to remove and output `tweets-clean.npy`.

Then, you can use `tweets-clean.npy` to build dataset.

`plot-trend.ipynb`
Load `covid.npy` and the file storing classified labels.

Sequentially run the cell and the final charts will show.

#Sanqiang Jiang 956163 COVID part:

1.Get_Covid_Data.ipynb
used to get covid data with givn tweet id and save the data as a npy file

2.build_covid_dataset.ipynb
used to convert the npy file to dataset required for feed into the model and save it in the folder covid/test

3.hugging-face_addcovid.ipynb
read in the covid dataset and used the trained model in task1 to get the predection and save it in file covid.predict.text

4.Rumour Analysis.ipynb
readin the prediction on covid dataset and analysis.
