python retrieval_train.py \
--batch-size 32 \
--bert-dim 300 \
--cuda \
--dataset-name empchat \
--dict-max-words 250000 \
--display-iter 100 \
--embeddings None \
--empchat-folder ${EMPATHETIC_DIALOGUES_DATA_FOLDER} \
--learning-rate 1e-5 \
--load-checkpoint ${PRETRAINED_MODEL_PATH} \
--max-hist-len 4 \
--model bert \
--model-dir ${TRAIN_SAVE_FOLDER} \
--model-name model \
--num-epochs 2 \
--optimizer adamax \
--stop-crit-num-epochs 10



EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'
TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'

watch nvidia-smi
lspci | grep -i nvidia

### emotion
within goemotions folder
stores test results in data\processed folder
folder structure manually described in bert_classifier.py
conda activate emotion
(uses environment configured around tf1)

run from ~/w266_project/goemotions

ed_for_goemotions.tsv
meld_for_goemotions.tsv
dd_for_goemotions.tsv

python3 -m bert_classifier \
--do_train False \
--do_predict True \
--test_fname /home/tmetz/w266_project/data/processed/ed_for_goemotions.tsv \
--calculate_metrics False \
--init_checkpoint /home/tmetz/w266_project/goemotions/model/model.ckpt-10852



--bert_config_file /home/tmetz/w266_project/goemotions/model/config.json
--test_fname test.tsv \