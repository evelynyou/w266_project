#!/bin/sh
#sync; echo 1 > /proc/sys/vm/drop_caches
#sync; echo 2 > /proc/sys/vm/drop_caches
#sync; echo 3 > /proc/sys/vm/drop_caches


TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'

#revised dataset for selfeval==5
#EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/ed_revised_selfeval'
#MODEL_NAME='model_revised_ed_selfeval'

#base dataset
EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'
MODEL_NAME='model_base_ed'

#dataset cleaned for bad rows
#EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/ed_revised_cleaned'
#MODEL_NAME='model_revised_ed_cleaned'

#dataset reduced for emotions-87%
#EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/ed_revised_emotion1'
#MODEL_NAME='model_revised_ed_emotion1'

#dataset reduced for emotions-57%
#EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/ed_revised_emotion2'
#MODEL_NAME='model_revised_ed_emotion2'




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
--num-epochs 8 \
--optimizer adamax \
--stop-crit-num-epochs 10
