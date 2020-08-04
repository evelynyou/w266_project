# Emotion Modeling for Improving Empathy in Conversations
#### MIDS Program - University of California, Berkeley - W266 Final Project
Travis Metz and Evelyn You - August 2020

Link to presentation regarding project:  https://docs.google.com/presentation/d/1Q8zM_8cfGsrDESMYnxt_Ct7taZYEc7WuQE7AAnJkYus/edit?usp=sharing

This project draws heavily from the work done by Rashkin et al:

https://github.com/facebookresearch/EmpatheticDialogues

https://arxiv.org/abs/1811.00207

We started with their code base and worked from there.

First we downloaded the EmpatheticDialogues dataset.

```wget https://dl.fbaipublicfiles.com/parlai/empatheticdialogues/empatheticdialogues.tar.gz```

We made various modifications to this dataset as described in our paper, including doing emotion pattern matching (as described in the paper and in the goemotions folder).


Then we downloaded the Rashkin base BERT model that had already been pre-trained on 1.7B Reddit conversations.

```wget https://dl.fbaipublicfiles.com/parlai/empatheticdialogues/models/bert_pretrained.mdl  # BERT, pretrained```

Using the environments described in `pip_install_list.txt` and `environment.yml` (which were configured around a PyTorch framework), we then fine-tuned the pretrained model on the various modified datasets, using the `run_training.sh` script.

This ran training, stored best models and provided a log of training and evaluation (see one log in `/model_trained/model_revised_ed_emotion1.txt).

After training, we would use `run_evaluation.sh` to generate BLEU scores, and `run_evaluation_p` to generate p@1,100 scores.

