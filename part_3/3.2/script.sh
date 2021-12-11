git clone https://github.com/vicsopin/simple_webapp.git

cd simple_webapp

docker build . -t 3.2
docker tag 3.2 porssakana/3.2
docker login -u username -p password
docker push porssakana/3.2