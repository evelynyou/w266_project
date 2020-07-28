#!/bin/sh
EVAL_SAVE_FOLDER='/home/tmetz/w266_project/evaluation'
PATH_TO_MODEL_WITH_TRANSFORMER_DICT='/home/tmetz/w266_project/model_transformer/normal_transformer_pretrained.mdl'
EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'
TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'
MODEL_NAME='model_base_ed'
#change model name for revised ed model

# P@1,100
python3 /home/tmetz/w266_project/EmpatheticDialogues/retrieval_train.py \
--batch-size 256 \
--bert-dim 300 \
--cuda \
--dataset-name empchat \
--dict-max-words 250000 \
--display-iter 100 \
--embeddings None \
--empchat-folder ${EMPATHETIC_DIALOGUES_DATA_FOLDER} \
--max-hist-len 4 \
--model bert \
--model-dir ${EVAL_SAVE_FOLDER} \
--model-name ${MODEL_NAME} \
--optimizer adamax \
--pretrained ${TRAIN_SAVE_FOLDER}/${MODEL_NAME}.mdl \
--reactonly



#--gpu 0 \