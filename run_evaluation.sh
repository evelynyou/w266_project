#!/bin/sh
EVAL_SAVE_FOLDER='/home/tmetz/w266_project/evaluation'
PATH_TO_MODEL_WITH_TRANSFORMER_DICT='/home/tmetz/w266_project/model_transformer/normal_transformer_pretrained.mdl'
EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'
TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'
MODEL_NAME='model_base_ed'
#change model name for revised ed model


#this runs evaluation on ED
# BLEU (EmpatheticDialogues context/candidates)
python3 /home/tmetz/w266_project/EmpatheticDialogues/retrieval_eval_bleu.py \
--bleu-dict ${PATH_TO_MODEL_WITH_TRANSFORMER_DICT} \
--empchat-cands \
--empchat-folder ${EMPATHETIC_DIALOGUES_DATA_FOLDER} \
--max-hist-len 4 \
--model ${TRAIN_SAVE_FOLDER}/${MODEL_NAME}.mdl \
--name ${MODEL_NAME} \
--output-folder ${EVAL_SAVE_FOLDER} \
--reactonly \
--task empchat \
--cuda



#--gpu 0 \