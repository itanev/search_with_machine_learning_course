ln -s /workspace/kaggle /home/gitpod/.kaggle

mkdir -p /workspace/opensearch
mkdir -p /workspace/logstash
mkdir -p /workspace/datasets
sudo chown -R gitpod:gitpod /workspace/opensearch
sudo  chown -R gitpod:gitpod /workspace/logstash
ln -s /home/gitpod/logstash-7.13.2 /workspace/logstash/logstash-7.13.2
<<<<<<< HEAD
pyenv activate search_with_ml_week1
pip install -r /workspace/search_with_machine_learning_course/requirements_week1.txt
#pyenv activate search_with_ml_week2
#pip install -r /workspace/search_with_machine_learning_course/requirements_week2.txt
#pyenv activate search_with_ml_week3
#pip install -r /workspace/search_with_machine_learning_course/requirements_week3.txt
#pyenv activate search_with_ml_week4
#pip install -r /workspace/search_with_machine_learning_course/requirements_week4.txt
=======
>>>>>>> a6072489314b84621044975bf878f87c62b539bf


cd docker
docker-compose up -d

