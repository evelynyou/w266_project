#!/bin/sh
sync; echo 1 > /proc/sys/vm/drop_caches
sync; echo 2 > /proc/sys/vm/drop_caches
sync; echo 3 > /proc/sys/vm/drop_caches

EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'
TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'

python /home/tmetz/w266_project/EmpatheticDialogues/retrieval_train.py \
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