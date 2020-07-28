#!/bin/sh
#sync; echo 1 > /proc/sys/vm/drop_caches
#sync; echo 2 > /proc/sys/vm/drop_caches
#sync; echo 3 > /proc/sys/vm/drop_caches


TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'

#revised dataset for selfeval==5
EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/ed_revised_selfeval'
MODEL_NAME='model_revised_ed_selfeval'

#EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'
#MODEL_NAME='model_base_ed'


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
--model-name ${MODEL_NAME} \
--num-epochs 4 \
--optimizer adamax \
--stop-crit-num-epochs 10
