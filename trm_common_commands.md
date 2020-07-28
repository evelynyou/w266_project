Common commands for w266

#gcp
tmetz@berkeley.edu

### trm-gpu
gcloud beta compute ssh --zone "us-east1-c" "test-gpu-1" --project "w266-276313"
gcloud compute ssh tmetz@test-gpu-1
ssh -i /Users/travismetz/.ssh/google_compute_engine tmetz@34.75.110.101


gcloud compute ssh --zone "us-central1-a" "trm-gpu" --project "w266-276313" --ssh-flag="-L 8896:127.0.0.1:8896"
gcloud compute ssh --ssh-flag="-L 8896:127.0.0.1:8896" tmetz@trm-gpu
gcloud compute ssh tmetz@trm-gpu
ssh -i /Users/tmetz/.ssh/google_compute_engine tmetz@35.238.183.63

ip address: 35.238.183.63

for vs code:
ssh -i /Users/travismetz/.ssh/google_compute_engine tmetz@35.188.67.20

things installed:
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
then used conda to install pandas, tensorflow, jupyter 
pip install -q tf-nightly
pip install -q tf-models-nightly
pip install fairseq


### project vm
#### with ports for jupyter notebook
gcloud compute ssh --ssh-flag="-L 8896:127.0.0.1:8896" --ssh-flag="-L 6006:127.0.0.1:6006" travismetz@project
conda activate project
jupyter notebook --port=8896

#### ssh without ports
gcloud compute ssh travismetz@project
(or could do trmetz as well - trmetz is root but does not have conda installed etc)

#### ssh without using gcloud compute - for vs code, etc 
ssh -i /Users/travismetz/.ssh/google_compute_engine travismetz@35.221.29.41
(manual intervention vs using gcloud compute ssh)
(can use this for vs code ssh)
(needed to add public key to vm instance online at google compute - public key is google_compute_engine.pub)
(I had to change key in known_hosts at one point by deleting old one)

gcloud compute ssh -ssh-flag="-L 8896:127.0.0.1:8896" --ssh-flag="-L 6006:127.0.0.1:6006" travismetz@project

#The latest html or json file in ~/.local/share/jupyter/runtime has the token/code in it if already running

#if need to kill old jupyter notebook process because still keeping those ports open
#or could go into log files per above and find token I think
ps aux | grep jupyter
kill []


pytorch
pip intall parlai

