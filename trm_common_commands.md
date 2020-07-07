##Common commands for w266 project infrastructure (specific to TRM)
gcp - tmetz@berkeley.edu

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



