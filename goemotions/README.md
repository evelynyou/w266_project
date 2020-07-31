## Metz/You W266 Project
Details regarding use of GoEmotion Framework.

This is based on https://github.com/google-research/google-research/tree/master/goemotions and the associated paper: https://arxiv.org/abs/2005.00547 


### Fine-tuning BERT using GoEmotions dataset
Use `environment.yml` to install proper TensorFlow 1 environment.

```conda activate emotion```

Original code was modified in a number of places to allow it to run on less capable GPU.

```python -m goemotions.bert_classifier```
   
We confirmed that fine-tuned model had similar classification accuracy on test set as referenced in original Demszky paper (see `/model/test.tsv.eval_results.txt`).

### Running fine-tuned model on ED dataset
We modified bert_classifier.py to reference proper folder structure.

We converted the EmpatheticDialogues dataset into appropriate format (`w266-project/data/ed_for_goemotions.tsv`)

It stores test results in `w266-project/data/processed` folder as `ed_for_goemotions.tsv.label_predictions.tsv`

```
python3 -m bert_classifier \
--do_train False \
--do_predict True \
--test_fname /home/tmetz/w266_project/data/processed/ed_for_goemotions.tsv \
--calculate_metrics False \
--init_checkpoint /home/tmetz/w266_project/goemotions/model/model.ckpt-10852
```
