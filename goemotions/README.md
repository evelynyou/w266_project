## Metz/You W266 Project
Details regarding use of GoEmotion Framework.

This is based on https://github.com/google-research/google-research/tree/master/goemotions and the associated paper: https://arxiv.org/abs/2005.00547 


### Fine-tuning BERT using GoEmotions dataset
```python -m goemotions.bert_classifier```
   
within goemotions folder
stores test results in data\processed folder
folder structure manually described in bert_classifier.py
conda activate emotion
(uses environment configured around tf1)

run from ~/w266_project/goemotions
ed_for_goemotions.tsv

python3 -m bert_classifier \
--do_train False \
--do_predict True \
--test_fname /home/tmetz/w266_project/data/processed/ed_for_goemotions.tsv \
--calculate_metrics False \
--init_checkpoint /home/tmetz/w266_project/goemotions/model/model.ckpt-10852



--bert_config_file /home/tmetz/w266_project/goemotions/model/config.json
--test_fname test.tsv \
