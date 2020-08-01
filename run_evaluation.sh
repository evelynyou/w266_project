#!/bin/sh
EVAL_SAVE_FOLDER='/home/tmetz/w266_project/evaluation'
PATH_TO_MODEL_WITH_TRANSFORMER_DICT='/home/tmetz/w266_project/model_transformer/normal_transformer_pretrained.mdl'
TRAIN_SAVE_FOLDER='/home/tmetz/w266_project/model_trained'
PRETRAINED_MODEL_PATH='/home/tmetz/w266_project/model_pretrained/bert_pretrained.mdl'

#normal base model
#MODEL_NAME='model_base_ed'
#MODEL_NAME='model_revised_ed_selfeval'
#MODEL_NAME='model_revised_ed_cleaned'
#MODEL_NAME='model_revised_ed_emotion1'
#MODEL_NAME='model_revised_ed_emotion2'
#MODEL_NAME='model_revised_43_no_emotion'
MODEL_NAME='model_revised_43_emotion

EMPATHETIC_DIALOGUES_DATA_FOLDER='/home/tmetz/w266_project/data/empatheticdialogues'


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