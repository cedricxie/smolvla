# Reference: https://colab.research.google.com/drive/1VKoOsUsT_uGGbuhGl8GH_SJaRknMZ0A2#scrollTo=gAhFf6H3GHIU

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /root/miniconda.sh
bash /root/miniconda.sh -b -p /root/miniconda3
export PATH="/root/miniconda3/bin:$PATH"
source /root/miniconda3/bin/activate

conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda install ffmpeg=7.1.1 -c conda-forge
pip install -e .
pip install -e ".[smolvla]"

# Git config.
git config --global user.email "cedricxie@gmail.com"
git config --global user.name "Yuesong.xie"

wandb login 467014dba405f7b5dcd7c1a7c65d75c3afa2f4cb
